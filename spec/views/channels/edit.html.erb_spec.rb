require 'rails_helper'

RSpec.describe "channels/edit", type: :view do
  before(:each) do
    @channel = assign(:channel, Channel.create!(
      family: nil,
      supplier: nil,
      crotal: "MyString",
      lot: "MyString",
      weight: 1.5,
      temperature: 1.5,
      total_value: "9.99"
    ))
  end

  it "renders the edit channel form" do
    render

    assert_select "form[action=?][method=?]", channel_path(@channel), "post" do

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
