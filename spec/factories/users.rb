FactoryBot.define do 
  factory :user do 

    sequence(:name) { |n| "test#{n}" }
    sequence(:email) { |n| "test#{n}@test.com" }
    password {"Fortre$$"}
    password_confirmation {"Fortre$$"}
  end
end
