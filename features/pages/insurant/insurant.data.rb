# frozen_string_literal: true

INSURANT = {
  name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  birth: Faker::Date.between(from: '1973-01-01', to: '2005-01-01').strftime('%m/%d/%Y'),
  is_male: [true, false].sample,
  country: ['Brazil', 'Albania', 'American Samoa', 'Palau', 'Spain', 'Tunisia', 'Tonga'].sample,
  zipcode: rand(1000..99_999_999),
  occupation: ['Employee', 'Public Official', 'Farmer', 'Unemployed', 'Selfemployed'].sample,
  hobbies: ['Speeding', 'Bungee Jump', 'Cliff Diving', 'Skydiving', 'Other'].sample
}.freeze
