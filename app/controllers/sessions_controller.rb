class SessionsController < ApplicationController
  before_action :omniauth_user, only: %i(create)

  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:success] = 'Welcome back!'
      redirect_to root_path
    else
      flash[:warning] = 'You have entered incorrect email and/or password.'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

  def omniauth_user
    auth = request.env['omniauth.auth']
    if auth.present?
      user = Authorization.find_by(
        uid: auth['uid'], provider: auth[:provider]
      ).try(:user) || User.create_with_omniauth(auth)
      session[:user_id] = user.id
      flash[:success] = 'Welcome back!'
      redirect_to root_path
    end
  end
end
