FactoryGirl.define do
  factory :valid_address do
    street_address { Faker::Address.street_address }
  end

  factory invalid_address do
    street_address {'bla-blup'}
  end
end
