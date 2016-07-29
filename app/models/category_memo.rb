class CategoryMemo < ApplicationRecord
  has_many :categories
  has_many :memos
end
