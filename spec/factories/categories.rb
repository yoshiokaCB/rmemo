FactoryGirl.define do
  factory :category do
    name "MyString"
  end
  factory :category_sample1, class: Category do
    name "sample1"
  end
  factory :category_sample2, class: Category do
    name "sample2"
  end
end
