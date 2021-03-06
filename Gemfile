source 'https://gems.ruby-china.com'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.6'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'execjs'
gem 'therubyracer'
gem 'pg'
gem 'cancancan'
gem 'doorkeeper'

gem 'exception_notification'

gem "capistrano", "~> 3.10", require: false
gem 'capistrano-rvm'
gem 'capistrano-bundler', '~> 1.3'
gem 'capistrano3-puma', github: "seuros/capistrano-puma"


gem 'mqtt', :git => 'https://github.com/njh/ruby-mqtt.git'

gem 'mina'

gem 'merit'

gem 'oauth2'

gem 'bootstrap-sass', '~> 3.3.7'
gem 'sass-rails', '>= 3.2'

gem 'ssdb'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

gem 'omniauth-oauth2'

gem 'rest-client'
gem 'omniauth-github', '~> 1.1', '>= 1.1.2'

gem 'pry'

gem 'dotenv-rails', require: 'dotenv/rails-now'

# Use Capistrano for deployment
gem 'capistrano-rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
