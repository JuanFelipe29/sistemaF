require 'rails_helper'

RSpec.describe "channels/show", type: :view do
  before(:each) do
    @channel = assign(:channel, Channel.create!(
      family: nil,
      supplier: nil,
      crotal: "Crotal",
      lot: "Lot",
      weight: 2.5,
      temperature: 3.5,
      total_value: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Crotal/)
    expect(rendered).to match(/Lot/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/9.99/)
  end
end
