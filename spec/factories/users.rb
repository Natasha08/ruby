# FactoryGirl.define do
#   # before(:each) do
#   # def login_user
#   #     @request.env["devise.mapping"] = Devise.mappings[:user]
#   #     user = FactoryGirl.create(:user)
#   #     user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
#   #     sign_in user
#   #   end
#   end
#
#   factory :account do
#     email { Faker::Internet.email }
#     password "password"
#     password_confirmation "password"
#     confirmed_at Date.today
#   end
# end

FactoryGirl.define do
  factory :user do
    email "test_user@test.com"
    password "test_password"
  end
end
