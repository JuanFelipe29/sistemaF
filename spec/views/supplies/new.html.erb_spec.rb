require 'rails_helper'

RSpec.describe "supplies/new", type: :view do
  before(:each) do
    assign(:supply, Supply.new(
      supplier: nil,
      code: "MyString",
      name: "MyString",
      quantity: "MyString",
      unit_price: "9.99",
      total_value: "9.99"
    ))
  end

  it "renders new supply form" do
    render

    assert_select "form[action=?][method=?]", supplies_path, "post" do

      assert_select "input[name=?]", "supply[supplier_id]"

      assert_select "input[name=?]", "supply[code]"

      assert_select "input[name=?]", "supply[name]"

      assert_select "input[name=?]", "supply[quantity]"

      assert_select "input[name=?]", "supply[unit_price]"

      assert_select "input[name=?]", "supply[total_value]"
    end
  end
end
