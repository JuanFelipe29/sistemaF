require 'rails_helper'

RSpec.describe "channels/index", type: :view do
  before(:each) do
    assign(:channels, [
      Channel.create!(
        family: nil,
        supplier: nil,
        crotal: "Crotal",
        lot: "Lot",
        weight: 2.5,
        temperature: 3.5,
        total_value: "9.99"
      ),
      Channel.create!(
        family: nil,
        supplier: nil,
        crotal: "Crotal",
        lot: "Lot",
        weight: 2.5,
        temperature: 3.5,
        total_value: "9.99"
      )
    ])
  end

  it "renders a list of channels" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Crotal".to_s, count: 2
    assert_select "tr>td", text: "Lot".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
  end
end
