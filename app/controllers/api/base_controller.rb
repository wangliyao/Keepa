module API
  class BaseController < ActionController::API

    rescue_from ActiveRecord::RecordNotFound do |e|
      render json: errors_json(e.message), status: :not_found
    end

    protected

    def current_user
      @current_user ||= User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
    end

    def oauth_client
      @oauth_client ||= OAuth2::Client.new(ENV["OAUTH_ID"], ENV["OAUTH_SECRET"], site: "http://localhost:3000")
    end

    def access_token
      if session[:access_token]
        @access_token ||= OAuth2::AccessToken.new(oauth_client, session[:access_token])
      end
    end
  end
end
