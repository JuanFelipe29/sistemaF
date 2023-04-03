require "rails_helper"

RSpec.describe PieceNamesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/piece_names").to route_to("piece_names#index")
    end

    it "routes to #new" do
      expect(get: "/piece_names/new").to route_to("piece_names#new")
    end

    it "routes to #show" do
      expect(get: "/piece_names/1").to route_to("piece_names#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/piece_names/1/edit").to route_to("piece_names#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/piece_names").to route_to("piece_names#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/piece_names/1").to route_to("piece_names#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/piece_names/1").to route_to("piece_names#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/piece_names/1").to route_to("piece_names#destroy", id: "1")
    end
  end
end
