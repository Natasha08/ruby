require 'rails_helper'

feature "user deletes a article" do
  let!(:article) { create :article }
  scenario "the article is deleted" do
    visit articles_path
    save_and_open_page
    within "tr", text:article.title do
      click_on "Delete"
    end
    expect(Article.find_by_id(article.id)).to be_nil
  end
  scenario "the article is created" do
    visit articles_path
    click_on "New article"
    fill_in "Title", with: 'A tale of two Cities'
    fill_in "Text", with: 'It was the best of times, it was the worst of times'
    expect do
      click_on "Create Article"
    end.to change { Article.count }.by 1
  end
end
