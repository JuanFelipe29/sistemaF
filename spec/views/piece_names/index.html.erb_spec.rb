require 'rails_helper'

RSpec.describe "piece_names/index", type: :view do
  before(:each) do
    assign(:piece_names, [
      PieceName.create!(
        family: nil,
        name: "Name"
      ),
      PieceName.create!(
        family: nil,
        name: "Name"
      )
    ])
  end

  it "renders a list of piece_names" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
