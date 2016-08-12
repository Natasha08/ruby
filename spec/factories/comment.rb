# This will guess the User class
FactoryGirl.define do
  factory :comment do
    id 4
    article_id 2
    commenter  "Newbie"
    body "What a great article!"
  end
end
