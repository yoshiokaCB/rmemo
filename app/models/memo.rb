class Memo < ApplicationRecord
  has_many :category_memos, dependent: :delete_all
  has_many :categories, through: :category_memos
end
