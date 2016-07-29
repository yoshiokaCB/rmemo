class Memo < ApplicationRecord
  has_many :category_memos
  has_many :categories, through: :category_memos
  accepts_nested_attributes_for :category_memos, allow_destroy: true
end
