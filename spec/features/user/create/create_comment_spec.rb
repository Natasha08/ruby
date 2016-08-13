require 'rails_helper'

feature "user creates a comment" do
  let!(:article) { create :article }
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
