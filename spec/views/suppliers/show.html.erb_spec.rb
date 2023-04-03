require 'rails_helper'

RSpec.describe "suppliers/show", type: :view do
  before(:each) do
    @supplier = assign(:supplier, Supplier.create!(
      name: "Name",
      email: "Email",
      phone: "Phone",
      cif: "Cif"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Cif/)
  end
end
