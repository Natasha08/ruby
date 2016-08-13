require 'rails_helper'

describe CommentsController do

  let!(:article) { create :article }
  let!(:comment) { create :comment }

  context "POST #create" do
    it "creates a comment with status 302" do
      post :create, params: {article_id: article[:id], comment: {comment: comment}}

      expect(response).to have_http_status(302)
    end
  end
  #FIX THIS TEST WHEN YOU ARE DONE WITH FEATURES.
  # context "DELETE #destroy" do
  #   it "deletes comment with status 302" do
  #     delete :destroy, params: {article_id: comment[:id], id: article[:id]}
  #     expect(response).to have_http_status(302)
  #   end
  # end
end
