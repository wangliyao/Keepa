class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id].present?
  end

  def doorkeeper_unauthorized_render_options(*)
    { json: { error: 'Not authorized' } }
  end

  def set_locale
  	I18n.locale = params[:locale]
  	cookies[:locale] = params[:locale] if params[:locale]
  rescue I18n::InvalidLocale
  	I18n.locale = I18n.default_locale
  end

  helper_method :current_user
end
