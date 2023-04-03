FactoryBot.define do
  factory :supply do
    supplier { nil }
    code { "MyString" }
    name { "MyString" }
    quantity { "MyString" }
    unit_price { "9.99" }
    total_value { "9.99" }
  end
end
