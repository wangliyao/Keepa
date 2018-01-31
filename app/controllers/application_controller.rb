class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id].present?
  end

  def doorkeeper_unauthorized_render_options(*)
    { json: { error: 'Not authorized' } }
  end

  helper_method :current_user
end
