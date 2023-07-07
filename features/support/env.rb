# frozen_string_literal: true

require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'site_prism/all_there'
require 'rspec'
require 'rspec/expectations'
require 'faker'
require 'json'
require 'pry'
include RSpec::Matchers

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'http://sampleapp.tricentis.com'
  config.default_max_wait_time = 20
end
