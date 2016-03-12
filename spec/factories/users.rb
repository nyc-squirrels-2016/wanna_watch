FactoryGirl.define do
  factory :user do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    username Faker::Internet.user_name
    email Faker::Internet.email
    about_me Faker::Hipster.sentence
    phone_number Faker::PhoneNumber.cell_phone
    location Faker::Address.city
    address Faker::Address.street_address
  end
end
