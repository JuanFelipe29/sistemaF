require 'rails_helper'

RSpec.describe "piece_names/show", type: :view do
  before(:each) do
    @piece_name = assign(:piece_name, PieceName.create!(
      family: nil,
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end
