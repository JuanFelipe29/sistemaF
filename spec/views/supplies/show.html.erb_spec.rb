require 'rails_helper'

RSpec.describe "supplies/show", type: :view do
  before(:each) do
    @supply = assign(:supply, Supply.create!(
      supplier: nil,
      code: "Code",
      name: "Name",
      quantity: "Quantity",
      unit_price: "9.99",
      total_value: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Quantity/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
