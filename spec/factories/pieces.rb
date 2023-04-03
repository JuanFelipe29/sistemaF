FactoryBot.define do
  factory :piece do
    channel { nil }
    piece_name { nil }
    lot { "MyString" }
    weight { 1 }
    start_date_maturation { "2023-04-02" }
    end_date_of_maturation { "2023-04-02" }
    matured { false }
    available { false }
    user { nil }
  end
end
