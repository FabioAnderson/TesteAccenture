# frozen_string_literal: true

VEHICLE = {
  make: ['Audi', 'BMW', 'Ford', 'Honda', 'Mazda', 'Mercedes Benz', 'Nissan'].sample,
  model: %w[Scooter Three-Wheeler Moped Motorcycle].sample,
  cylinder: rand(1..2000),
  performance: rand(1..2000),
  dateofmanufacture: Faker::Date.between(from: '1984-11-23', to: '2023-07-07').strftime('%m/%d/%Y'),
  seats: rand(1..9),
  righHand: [true, false].sample,
  seatsMotorcycle: rand(1..3),
  fuel: ['Petrol', 'Gas', 'Diesel', 'Electric Power', 'Other'].sample,
  payload: rand(1..1000),
  weight: rand(100..50_000),
  price: rand(500..100_000),
  license: rand(1_000_000_000..9_999_999_999),
  annualMileage: rand(100..100_000)
}.freeze
