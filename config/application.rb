require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "action_controller/railtie"
require "action_mailer/railtie"
require "active_resource/railtie"
require "sprockets/railtie"

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module RailsBoilerplate
  class Application < Rails::Application

    # Generator Specification
    # -----------------------

    config.generators do |generator|
      generator.orm               :mongoid
      generator.template_engine   :haml
      generator.view_specs        false
      generator.helper_specs      false
      generator.controller_specs  false
    end 

    # We do not want to use model roots in JSON responses.

    Mongoid.configure do |mongoid|
      config.include_root_in_json = false
    end

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable the asset pipeline
    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'
  end
end
