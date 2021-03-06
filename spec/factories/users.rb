# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    first_name { Faker::Dog.name }
    last_name { Faker::Artist.name }
    password { Faker::Color.color_name }
    role { :default }
    status { 'active' }
  end

  factory :admin, parent: :user do
    role { :admin }
    status { 'active' }
  end
end
