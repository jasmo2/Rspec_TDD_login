FactoryGirl.define do
  factory :user do
    name Faker::Name.last_name
    email Faker::Internet.email
    password_digest "correct_password"
  end

end
