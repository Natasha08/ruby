# user clicks on login button

#user fills out the form

#user presses submit, and gets a 302 to (whatever page the user is set to navigate to after logging in)

#user creates a new session
require 'rails_helper'

feature "user logs in" do
  scenario "the article is created" do
    visit root_path
    click_on "Login"
    fill_in "Email", with: 'test_user@test.com'
    fill_in "Password", with: 'test_password'
    expect do
      click_on "Log in"
    end
    puts page
  end
end
