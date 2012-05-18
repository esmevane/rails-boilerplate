source 'https://rubygems.org'

# Core & Base Functionality
# -------------------------
gem 'rails', '3.2.1'
gem 'haml-rails'
gem 'bson_ext'
gem 'mongoid'
gem 'mongoid_slug'
gem 'jquery-rails'
gem 'haml_coffee_assets'
gem 'coffee-filter'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', platform: :ruby

  gem 'uglifier', '>= 1.0.3'
end

# Testing structure.
# Primary functionality:  Rspec, Guard, Jasmine

group :development, :test do
  gem 'growl'
  gem 'spork'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'jasminerice'

  gem 'guard-rspec', '~> 0.6.0'
  gem 'guard-spork'
  gem 'guard-jasmine'

  gem 'database_cleaner'
  gem 'factory_girl_rails'
end

group :test, :darwin do
  gem 'rb-fsevent', require: false
end

group :development do
  gem 'hirb'
end

# Server
# ------
gem 'unicorn'