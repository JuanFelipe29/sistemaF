require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/piece_names", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # PieceName. As you add validations to PieceName, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      PieceName.create! valid_attributes
      get piece_names_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      piece_name = PieceName.create! valid_attributes
      get piece_name_url(piece_name)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_piece_name_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      piece_name = PieceName.create! valid_attributes
      get edit_piece_name_url(piece_name)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new PieceName" do
        expect {
          post piece_names_url, params: { piece_name: valid_attributes }
        }.to change(PieceName, :count).by(1)
      end

      it "redirects to the created piece_name" do
        post piece_names_url, params: { piece_name: valid_attributes }
        expect(response).to redirect_to(piece_name_url(PieceName.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new PieceName" do
        expect {
          post piece_names_url, params: { piece_name: invalid_attributes }
        }.to change(PieceName, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post piece_names_url, params: { piece_name: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested piece_name" do
        piece_name = PieceName.create! valid_attributes
        patch piece_name_url(piece_name), params: { piece_name: new_attributes }
        piece_name.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the piece_name" do
        piece_name = PieceName.create! valid_attributes
        patch piece_name_url(piece_name), params: { piece_name: new_attributes }
        piece_name.reload
        expect(response).to redirect_to(piece_name_url(piece_name))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        piece_name = PieceName.create! valid_attributes
        patch piece_name_url(piece_name), params: { piece_name: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested piece_name" do
      piece_name = PieceName.create! valid_attributes
      expect {
        delete piece_name_url(piece_name)
      }.to change(PieceName, :count).by(-1)
    end

    it "redirects to the piece_names list" do
      piece_name = PieceName.create! valid_attributes
      delete piece_name_url(piece_name)
      expect(response).to redirect_to(piece_names_url)
    end
  end
end
