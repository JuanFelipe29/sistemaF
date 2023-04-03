require 'rails_helper'

RSpec.describe "pieces/show", type: :view do
  before(:each) do
    @piece = assign(:piece, Piece.create!(
      channel: nil,
      piece_name: nil,
      lot: "Lot",
      weight: 2,
      matured: false,
      available: false,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Lot/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
