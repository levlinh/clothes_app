# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "2.7.0"

gem "jbuilder", "~> 2.7"
gem "mysql2", "~> 0.5"
gem "puma", "~> 5.0"
gem "rails", "~> 6.1.3", ">= 6.1.3.1"
gem "rubocop", "~> 0.74.0", require: false
gem "rubocop-checkstyle_formatter", require: false
gem "rubocop-rails", "~> 2.3.2", require: false
gem "sass-rails", ">= 6"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 5.0"
gem 'font_awesome5_rails'
gem 'bootstrap',  '~>4.3.1'
gem 'jquery-rails', '4.3.1'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'faker', '~> 2.17'

gem "bootsnap", ">= 1.4.4", require: false

group :development, :test do
  gem "byebug", platforms: %i(mri mingw x64_mingw)
end

group :development do
  gem "listen", "~> 3.3"
  gem "rack-mini-profiler", "~> 2.0"
  gem "spring"
  gem "web-console", ">= 4.1.0"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  # Easy installation and use of web drivers to run system tests with browsers
  gem "webdrivers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i(mingw mswin x64_mingw jruby)
