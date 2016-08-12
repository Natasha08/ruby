require 'rails_helper'

describe ArticlesController do
  context "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index

      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  context "GET #new" do
    it "responds successfully with an HTTP 200 status code" do
      get :new

      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  context "GET #show" do
    it "responds successfully with an HTTP 200 status code" do
      article = create(:article)
      get :show, params: {id: article[:id]}

      expect(response).to be_success
      expect(assigns(:article)).to eq article
      expect(response).to have_http_status(200)
    end
  end
  context "GET #edit" do
    it "responds successfully with an HTTP 200 status code" do
      article = create(:article)
      get :edit, params: {id: article[:id]}

      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end
  context "POST #create" do
    it "responds successfully with an HTTP 200 status code" do
      article = create(:article)
      post :create, params: {article: {article: article}}

      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end
  context "PATCH #update" do
    it "responds successfully with an HTTP 302 status code" do
      article = create(:article)
      article.update(title: 'Patch Title')
      patch :update, params: {id: article[:id], article: {article: article}}

      expect(response).to have_http_status(302)
    end
  end
  context "DELETE #destroy" do
    it "responds successfully with an HTTP 302 status code" do
      article = create(:article)
      delete :destroy, params: {id: article[:id]}

      expect(response).to have_http_status(302)
    end
  end
end
