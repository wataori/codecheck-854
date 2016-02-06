require 'database_cleaner'
require 'factory_girl_rails'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.profile_examples = 4
  config.order = :random
  Kernel.srand config.seed
  config.include FactoryGirl::Syntax::Methods
  config.before(:all) do
    FactoryGirl.reload
  end
  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
  end
  config.before(:each) do
    DatabaseCleaner.start
  end
  config.after(:each) do
    DatabaseCleaner.clean
  end
end
