module OmniAuth
  module Strategies
    class Todo < OmniAuth::Strategies::OAuth2
      option :email, :todo

      option :client_options, {
        site: 'http://localhost:3000',
        authorize_path: '/oauth/authorize'
      }

      uid do
        raw_info['id']
      end

      info do
        { email: raw_info['email'] }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/login').parsed
      end
    end
  end
end