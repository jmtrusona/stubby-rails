source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'bootsnap', require: false
gem 'brakeman'
gem 'coffee-rails'
gem 'dotenv-rails', require: 'dotenv/rails-now'
gem 'httparty'
gem 'jbuilder'
gem 'json-jwt'
gem 'jsonapi-rails'
gem 'local_time'
gem 'lograge'
gem 'logstash-logger'
gem 'nokogiri'
gem 'pg'
gem 'puma'
gem 'rails', '~> 5.2.0'
gem 'rswag-api'
gem 'rswag-ui'
gem 'rubocop'
gem 'rubocop-rails'
gem 'safe_attributes'
gem 'sass-rails'
gem 'scrypt'
gem 'sentry-raven'
gem 'silencer'
gem 'turbolinks'
gem 'uglifier'

group :development, :test do
  gem 'rspec-rails'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'annotate'
  gem 'bundler-audit'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'chromedriver-helper'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'guard-rails', require: false
  gem 'guard-rspec', require: false
  gem 'guard-rubocop', require: false
  gem 'json-schema'
  gem 'rails-controller-testing'
  gem 'rswag-specs'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'timecop'
  gem 'timecop-rspec', github: 'avantoss/timecop-rspec'
  gem 'vcr'
  gem 'webmock'
end

# prometheus monitoring
gem "prometheus-client", "~> 0.9.0"

gem "prometheus_exporter", "~> 0.4.13"
