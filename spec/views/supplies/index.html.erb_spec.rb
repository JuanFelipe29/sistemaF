require 'rails_helper'

RSpec.describe "supplies/index", type: :view do
  before(:each) do
    assign(:supplies, [
      Supply.create!(
        supplier: nil,
        code: "Code",
        name: "Name",
        quantity: "Quantity",
        unit_price: "9.99",
        total_value: "9.99"
      ),
      Supply.create!(
        supplier: nil,
        code: "Code",
        name: "Name",
        quantity: "Quantity",
        unit_price: "9.99",
        total_value: "9.99"
      )
    ])
  end

  it "renders a list of supplies" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Code".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Quantity".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
  end
end
