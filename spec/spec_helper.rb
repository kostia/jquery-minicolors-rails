ENV['RAILS_ENV'] = 'test'

require File.expand_path('../dummy/config/environment.rb',  __FILE__)
require 'rails/test_help'
require 'rspec/rails'
require 'multi_json'
require 'webrat'

Rails.backtrace_cleaner.remove_silencers!

RSpec.configure do |config|
  config.include RSpec::Rails::HelperExampleGroup
  config.include Webrat::Matchers
end
