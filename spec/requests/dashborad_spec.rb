require 'rails_helper'

RSpec.describe "Dashborads", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/dashborad/index"
      expect(response).to have_http_status(:success)
    end
  end

end
