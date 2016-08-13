require 'rails_helper'

feature "user deletes an article" do
  let!(:article) { create :article }
  scenario "the article is deleted" do
    visit articles_path
    save_and_open_page
    within "tr", text:article.title do
      click_on "Delete"
    end
    expect(Article.find_by_id(article.id)).to be_nil
  end
end
