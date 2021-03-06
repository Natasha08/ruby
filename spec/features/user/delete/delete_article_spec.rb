require 'rails_helper'

feature "user deletes an article" do
  let!(:user) { create :user }
  let!(:article) { create :article }

  before do
    visit articles_path
    fill_in "Email", with: 'test_user@test.com'
    fill_in "Password", with: 'test_password'
    click_on "Log in"
  end
  scenario "the article is deleted" do
    visit articles_path
    save_and_open_page
    within "tr", text:article.title do
      click_on "Delete"
    end
    expect(Article.find_by_id(article.id)).to be_nil
  end
end
