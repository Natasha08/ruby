require 'rails_helper'

feature "user creates an article" do
  let!(:user) { create :user }
  
  before do
    visit articles_path
    fill_in "Email", with: 'test_user@test.com'
    fill_in "Password", with: 'test_password'
    click_on "Log in"
  end
  scenario "the article is created" do
    click_on "New article"
    fill_in "Title", with: 'A Tale of Two Cities'
    fill_in "Text", with: 'It was the best of times, it was the worst of times...'
    expect do
      click_on "Create Article"
    end.to change { Article.count }.by 1
  end
end
