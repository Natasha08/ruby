require 'rails_helper'

feature "user deletes a comment" do
  let!(:article) { create :article }
  let!(:comment) { create :comment }
  scenario "the comment is deleted" do
    visit articles_path
    save_and_open_page
    within "tr", text:article.title do
      click_on "Edit"
    end
    click_on "Delete Comment"
    expect(Comment.find_by_id(article.id)).to be_nil
  end
end
