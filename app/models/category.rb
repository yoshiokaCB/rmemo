class Category < ApplicationRecord
  has_many :category_memos
  has_many :memos, through: :category_memos
end
