require 'rails_helper'

RSpec.describe "families/show", type: :view do
  before(:each) do
    @family = assign(:family, Family.create!(
      code: "Code",
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Name/)
  end
end
