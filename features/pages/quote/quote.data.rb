# frozen_string_literal: true

QUOTE = {
  email: "#{Faker::Name.first_name}@gmail.com",
  username: "#{Faker::Internet.user_name}#{rand(1000..9999)}",
  password: "#{Faker::Internet.password}@Rf22"
}.freeze
