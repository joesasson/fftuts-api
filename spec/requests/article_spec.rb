require 'rails_helper'

RSpec.describe "Article API", type: :request do
  # Initialize test data
  let!(:articles) { create_list(:article, 10) }
  let(:article_id) { articles.first.id }

  describe "GET /v1/articles" do
    before { get '/v1/articles' }

    it "returns articles" do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it "returns status code 200" do
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /v1/articles/:id" do
    before { get "/v1/articles/#{article_id}" }

    context "when the record exists" do
      it "returns the article" do
        expect(json).not_to be_empty
        expect(json[:id]).to eq(article_id)
      end

      it "return status code 200" do
        expect(response).to have_http_status(200)
      end
    end

    context "when the record doesn't exist" do
      let(:article_id) { 100 }

      it "returns status code 404" do
        expect(response).to have_http_status(404)
      end

      it "returns a not found message" do
        expect(response.body).to match(/Couldn't find Article/)
      end
    end
  end

  describe "POST /v1/articles" do
    let(:valid_attributes) { { title: "Learn Elm in 10 minutes", link: "https://example.com", date: Time.now } }

    context "when the request is valid" do
      before { post '/v1/articles', params: valid_attributes }

      it "creates an article" do
        expect(json[:title]).to match(/Learn Elm in 10 minutes/)
      end

      it "returns status code of 201" do
        expect(response).to have_http_status(201)
      end
    end

    context "when the request is invalid" do
      before { post '/v1/articles', params: { title: 'Foobar', date: Time.now }}

      it "returns status code 422" do
        expect(response).to have_http_status(422)
      end

      it "returns a validation failure message" do
        expect(response.body).to match(/Validation failed: Link can't be blank/)
      end
    end

  end

  describe "PUT /v1/articles/:id" do
    let(:valid_attributes){ { title: 'Learn React' } }

    context "when the record exists" do
      before { put "/v1/articles/#{article_id}", params: valid_attributes }

      it "updates the record" do
        expect(response.body).to be_empty
      end

      it "returns status code 204" do
        expect(response).to have_http_status(204)
      end
    end
  end

  describe "DELETE /v1/articles/:id" do
    before { delete "/v1/articles/#{article_id}" }

    it "deletes the record" do
      expect(Article.first.id).not_to eq(article_id)
    end

    it "returns status code 204" do
      expect(response).to have_http_status(204)
    end
  end


end
