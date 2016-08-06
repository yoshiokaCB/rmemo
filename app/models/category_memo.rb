class CategoryMemo < ApplicationRecord
  belongs_to :category
  belongs_to :memo
end
