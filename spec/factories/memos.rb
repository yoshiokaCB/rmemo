
FactoryGirl.define do
  factory :memo do
    title "MyString"
    status 1
    content_body "MyText"
    user_id 1
    after(:build) do |memo|
      memo.categories << FactoryGirl.create(:category)
    end
  end
  factory :valid_new_memo, class: Memo do
    title "MyString_new"
    status 1
    content_body "MyText_new"
    user_id 1
    after(:build) do |memo|
      memo.categories << FactoryGirl.create(:category)
    end
  end

  # trait :cate1 do
  #   cate1 = FactoryGirl.create(:category_sample1)
  #   cate2 = FactoryGirl.create(:category_sample1)
  #   category_ids [cate1.id,cate2.id]
  # end
  # trait :cate2 do
  #   cate1 = FactoryGirl.create(:category_sample1)
  #   category_ids [cate1.id]
  # end
end

