FactoryGirl.define do
  factory :project do
    url { Faker::Internet.url }
    title { Faker::Name.title }
    description { Faker::Lorem.sentence }
  end
end
