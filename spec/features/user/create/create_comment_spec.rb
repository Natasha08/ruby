require 'rails_helper'

feature "user creates a comment" do
  let!(:user) { create :user }
  let!(:article) { create :article }

  before do
    visit articles_path
    fill_in "Email", with: 'test_user@test.com'
    fill_in "Password", with: 'test_password'
    click_on "Log in"
  end
  scenario "the comment is created" do
    visit articles_path
    click_on "Edit"
    fill_in "Commenter", with: 'Newbie'
    fill_in "Body", with: 'A classic, and one of my favorites!'
    expect do
      click_on "Create Comment"
    end.to change { Comment.count }.by 1
  end
end
