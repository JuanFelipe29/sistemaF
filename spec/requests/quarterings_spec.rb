require 'rails_helper'

RSpec.describe "Quarterings", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/quarterings/index"
      expect(response).to have_http_status(:success)
    end
  end

end
