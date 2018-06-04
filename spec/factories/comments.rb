FactoryBot.define do
  factory :comment do
    book
    description { Faker::Lorem.paragraph }
    first_name { Faker::Name.first_name }
    score { rand(1..5) }
  end
end
