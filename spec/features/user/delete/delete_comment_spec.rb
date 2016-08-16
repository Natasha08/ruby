require 'rails_helper'

feature "user deletes a comment" do
  let!(:user) { create :user }
  let!(:article) { create :article }
  let!(:comment) { create :comment }

  before do
    visit articles_path
    fill_in "Email", with: 'test_user@test.com'
    fill_in "Password", with: 'test_password'
    click_on "Log in"
  end
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
