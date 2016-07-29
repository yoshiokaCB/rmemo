class CreateCategoryMemos < ActiveRecord::Migration[5.0]
  def change
    create_table :category_memos do |t|
      t.integer :category_id
      t.integer :memo_id

      t.timestamps
    end
  end
end
