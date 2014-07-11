source 'https://rubygems.org'

gem 'rails', '4.0.8'
gem 'pg'
gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'bcrypt', '~> 3.1.7'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Custom gems here
gem 'figaro'
gem 'rmagick', require: false
gem 'carrierwave'
gem "fog", "~> 1.22.0"
gem 'sidekiq'
gem 'httparty'
gem 'exception_notification'
gem 'rack-cors', :require => 'rack/cors'

group :development do
  gem 'faker'
  gem 'letter_opener'
  gem 'meta_request'
  gem 'better_errors' #literally what it says
  gem 'binding_of_caller' #adds REPL to better_errors
  gem 'guard-livereload' #adds live reload
  gem 'rack-livereload'
  gem 'quiet_assets'
end

group :development, :test do
  gem 'annotate'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'guard-rspec'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'simplecov', require: false
end
