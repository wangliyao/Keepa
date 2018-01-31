#require File.expand_path('lib/omniauth/strategies/todo', Rails.root)

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_CLIENT_ID'], ENV['GITHUB_CLIENT_SECRET']
 # provider :todo, ENV['OAUTH_ID'], ENV['OAUTH_SECRET']
end