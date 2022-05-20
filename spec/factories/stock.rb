FactoryBot.define do
  factory :stock do
    item_name            {'あいうえお'}
    info                 {'あいうえお'}
    stock_quantity       {12}
    association :user

    after(:build) do |stock|
      stock.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end