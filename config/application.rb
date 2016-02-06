require File.expand_path('../boot', __FILE__)

require "rails"
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"

Bundler.require(*Rails.groups)
Dotenv::Railtie.load

module Codecheck854
  class Application < Rails::Application
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    config.api_only = true
    config.generators do |g|
      g.test_framework :rspec,
                       fixtures: true,
                       model_specs: false,
                       view_specs: false,
                       controller_specs: false,
                       helper_specs: false,
                       routing_specs: false,
                       request_specs: false
    end
  end
end
