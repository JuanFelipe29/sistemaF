require 'rails_helper'

RSpec.describe "piece_names/edit", type: :view do
  before(:each) do
    @piece_name = assign(:piece_name, PieceName.create!(
      family: nil,
      name: "MyString"
    ))
  end

  it "renders the edit piece_name form" do
    render

    assert_select "form[action=?][method=?]", piece_name_path(@piece_name), "post" do

      assert_select "input[name=?]", "piece_name[family_id]"

      assert_select "input[name=?]", "piece_name[name]"
    end
  end
end
