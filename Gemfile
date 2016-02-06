source 'https://rubygems.org'
ruby '2.3.0'
gem 'rails', '>= 5.0.0.beta2', '< 5.1'
gem 'pg', '~> 0.18'
gem 'puma'
gem 'dotenv'

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem "rspec-rails"
  gem "factory_girl_rails"
end

group :development do
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'spring'
end

group :test do
  gem "faker"
  gem "capybara"
  gem "database_cleaner"
end
