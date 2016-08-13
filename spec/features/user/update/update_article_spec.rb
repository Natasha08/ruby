require 'rails_helper'

feature "user updates an article" do
    let!(:article) { create :article }
  scenario "the article is updated" do
    visit articles_path
    save_and_open_page
    within "tr", text:article.title do
      click_on "Edit"
    end
    click_on "Edit"
    fill_in "Title", with: 'A Man for All Seasons'
    fill_in "Text", with: 'Every man has his price...'
    expect do
      click_on "Update Article"
    end
  expect(page).to have_content 'Every man has his price...'
  end
end
