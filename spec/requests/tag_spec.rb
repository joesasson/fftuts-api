require 'rails_helper'

RSpec.describe "Tag API", type: :request do
  let!(:tags) { create_list(:tag, 10) }
  let(:tag_id) { tags.first.id }

  describe "GET /v1/tags" do
    before { get "/v1/tags" }

    it "returns tags" do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it "returns status code 200" do
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /v1/tags/:id" do
    before { get "/v1/tags/#{tag_id}" }

    context "when the record exists" do
      it "returns the tag" do
        expect(json).not_to be_empty
        expect(json[:id]).to eq(tag_id)
      end

      it "returns status code 200" do
        expect(response).to have_http_status(200)
      end
    end

    context "when the record doesn't exist" do
      let(:tag_id) { 100 }

      it "returns status code 404" do
        expect(response).to have_http_status(404)
      end

      it "returns a not found message" do
        expect(response.body).to match(/Couldn't find Tag/)
      end
    end
  end

  describe "POST /v1/tags" do
    let(:valid_attributes) { { name: "Javascript" } }

    context "when the request is valid" do
      before { post "/v1/tags", params: valid_attributes }

      it "creates a tag" do
        expect(json[:name]).to match(/Javascript/)
      end

      it "returns status of 201" do
        expect(response).to have_http_status(201)
      end
    end

    context "when the request is invalid" do
      before { post "/v1/tags", params: { } }

      it "returns status code 422" do
        expect(response).to have_http_status(422)
      end

      it "returns a validation failure message" do
        expect(response.body).to match(/Validation failed: Name can't be blank/)
      end
    end
  end

  describe "PUT /v1/tags/:id" do
    let(:valid_attributes){ { name: "Ruby" } }

    context "when the record exists" do
      before { put "/v1/tags/#{tag_id}", params: valid_attributes }

      it "updates the record" do
        expect(response.body).to be_empty
      end

      it "returns status code 204" do
        expect(response).to have_http_status(204)
      end
    end
  end

  describe "DELETE /v1/tags/:id" do
    before { delete "/v1/tags/#{tag_id}"}

    it "deletes the record" do
      expect(Tag.first.id).not_to eq(tag_id)
    end

    it "returns status code 204" do
      expect(response).to have_http_status(204)
    end
  end
end
