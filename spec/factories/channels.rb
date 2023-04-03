FactoryBot.define do
  factory :channel do
    family { nil }
    supplier { nil }
    born_date { "2023-04-02 01:26:03" }
    slaughter_date { "2023-04-02 01:26:03" }
    crotal { "MyString" }
    lot { "MyString" }
    weight { 1.5 }
    temperature { 1.5 }
    total_value { "9.99" }
  end
end
