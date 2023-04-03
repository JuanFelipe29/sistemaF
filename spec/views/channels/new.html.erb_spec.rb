require 'rails_helper'

RSpec.describe "channels/new", type: :view do
  before(:each) do
    assign(:channel, Channel.new(
      family: nil,
      supplier: nil,
      crotal: "MyString",
      lot: "MyString",
      weight: 1.5,
      temperature: 1.5,
      total_value: "9.99"
    ))
  end

  it "renders new channel form" do
    render

    assert_select "form[action=?][method=?]", channels_path, "post" do

      assert_select "input[name=?]", "channel[family_id]"

      assert_select "input[name=?]", "channel[supplier_id]"

      assert_select "input[name=?]", "channel[crotal]"

      assert_select "input[name=?]", "channel[lot]"

      assert_select "input[name=?]", "channel[weight]"

      assert_select "input[name=?]", "channel[temperature]"

      assert_select "input[name=?]", "channel[total_value]"
    end
  end
end
