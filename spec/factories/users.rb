FactoryBot.define do
  factory :user do
    # define user attributes
    email { "user@example.com" }
    password { "password" }
    first_name { "John" }
    last_name { "Test" }
  end
end
