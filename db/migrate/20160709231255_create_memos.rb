class CreateMemos < ActiveRecord::Migration[5.0]
  def change
    create_table :memos do |t|
      t.string :title
      t.integer :status
      t.text :content_body
      t.integer :user_id

      t.timestamps
    end
  end
end
