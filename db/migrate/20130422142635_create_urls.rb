class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
    	t.string :url
    	t.string :title
    	t.string :description
    	t.integer :list_id

      t.timestamps
    end
    add_index :urls, [:list_id, :updated_at]
  end
end
