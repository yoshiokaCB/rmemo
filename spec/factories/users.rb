FactoryGirl.define do
  factory :user, class: User do
    id 1
    email "user@test.com"
    password "foobar"
    password_confirmation "foobar"
  end
  # factory :user do
  #
  # end
end
