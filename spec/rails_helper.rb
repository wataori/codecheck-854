ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  # use_transactional_fixtures= will be removed from Rails 5, but isn't introduced in rspec3.1.7 ⁽⁽ଘ( ˊᵕˋ )ଓ⁾⁾
  config.infer_spec_type_from_file_location!
end
