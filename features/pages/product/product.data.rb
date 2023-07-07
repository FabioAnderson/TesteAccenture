# frozen_string_literal: true

PRODUCT = {
  start_date: (DateTime.now >> 2).strftime('%m/%d/%Y'),
  insurance_sum: ['3.000.000,00', '5.000.000,00', '7.000.000,00', '10.000.000,00', '15.000.000,00', '20.000.000,00', '25.000.000,00', '30.000.000,00',
                  '35.000.000,00'].sample,
  merit: ['Super Bonus', "Bonus #{rand(1..9)}", "Malus #{rand(10..17)}"].sample,
  damage_insurance: ['No Coverage', 'Partial Coverage', 'Full Coverage'].sample,
  optional_products: ['Euro Protection', 'Legal Defense Insurance'].sample,
  car: %w[No Yes].sample
}.freeze
