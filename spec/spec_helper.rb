ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)

require 'rubygems'
require 'spork'

require 'rspec/rails'
require 'rspec/autorun'
require 'database_cleaner'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |file| require file }

Spork.prefork do
  RSpec.configure do |config|
    config.before(:suite) do
      DatabaseCleaner[:mongoid].strategy = :truncation
    end

    config.before(:each) do
      DatabaseCleaner[:mongoid].start
    end

    config.after(:each) do
      DatabaseCleaner[:mongoid].clean
    end

    config.infer_base_class_for_anonymous_controllers = false
  end
end

Spork.each_run do
  FactoryGirl.reload
end