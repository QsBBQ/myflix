source 'https://rubygems.org'
ruby '2.1.3'

gem 'therubyracer'
gem 'bootstrap-sass'
gem 'coffee-rails'
gem 'rails'
gem 'haml-rails'
gem 'sass-rails'
gem 'uglifier'
gem 'jquery-rails'
gem 'bootstrap_form'
gem 'bcrypt-ruby'
gem 'sidekiq'
gem 'unicorn'
gem "sentry-raven", :git => "https://github.com/getsentry/raven-ruby.git"
gem 'paratrooper'
gem 'carrierwave'
gem 'mini_magick'
gem 'stripe'
gem 'figaro'


group :development do
  gem 'sqlite3'
  gem 'thin'
  gem "better_errors"
  gem "binding_of_caller"
  gem "letter_opener"
end

group :test, :development do
  gem 'rspec-rails', '2.14.1'
  gem 'fabrication'
  gem 'faker'
  gem 'pry'
  gem 'pry-nav'
  gem 'vcr'
  gem 'webmock'
end

group :test do
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'launchy'
  gem 'capybara-email', github: 'dockyard/capybara-email'
  #gem 'capybara-email'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

