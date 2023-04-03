require 'rails_helper'

RSpec.describe "suppliers/index", type: :view do
  before(:each) do
    assign(:suppliers, [
      Supplier.create!(
        name: "Name",
        email: "Email",
        phone: "Phone",
        cif: "Cif"
      ),
      Supplier.create!(
        name: "Name",
        email: "Email",
        phone: "Phone",
        cif: "Cif"
      )
    ])
  end

  it "renders a list of suppliers" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Phone".to_s, count: 2
    assert_select "tr>td", text: "Cif".to_s, count: 2
  end
end
