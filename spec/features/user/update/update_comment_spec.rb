#THIS PATH DOES NOT EXIST YET

# require 'rails_helper'
#
# feature "user updates a comment" do
#     let!(:article) { create :article }
#     let!(:comment) { create :comment }
#   scenario "the comment is updated" do
#     visit articles_path
#     save_and_open_page
#     within "tr", text:article.title do
#       click_on "Edit"
#     end
#     click_on "Edit"
#     fill_in "Commenter", with: 'Newbie'
#     fill_in "Body", with: 'My fav article!'
#     expect do
#       click_on "Update Comment"
#     end
#   expect(page).to have_content 'Every man has his price...'
#   end
# end
