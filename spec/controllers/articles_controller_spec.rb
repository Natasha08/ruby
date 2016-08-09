require 'rails_helper'
require 'article'

describe ArticlesController do
  context "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      request.env['HTTP_AUTHORIZATION'] = ArticlesController::HttpAuthentication::Basic.encode_credentials("natasha","secret")
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
    # it "renders the index template" do
    #   get :index
    #   expect(response).to render_template("index")
    # end
  end
end
