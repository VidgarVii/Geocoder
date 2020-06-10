# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem 'puma'
gem 'rake'
gem 'sinatra'
gem 'sinatra-contrib'
gem 'sinatra-i18n'
gem 'i18n'
gem 'require_all'          # Auto load constants
gem 'tux'                  # Sinatra console

gem 'interactor', '~> 3.0' # Provided pattern Interactor

group :test do
  gem 'rack-test'
  gem 'rspec'              # Test
  gem 'test-prof'          # Provided simple methods for init objects
end
