FactoryBot.define do
  factory :book do
    user
    title { Faker::Book.title }
    description { Faker::Lorem.paragraph }
    author { Faker::Book.author }
    pages_count { rand(100..500) }
    published_at { Faker::Date.between(20.years.ago, Date.yesterday) }
  end
end