class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.string :description
      t.integer :user_id

      t.timestamps
    end
    add_index :lists, [:user_id, :updated_at]
  end
end
