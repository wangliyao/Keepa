class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :abstract
      t.integer :content_type, default: 0
      t.references :cloumn

      t.timestamps
    end
    add_index :posts, :content_type
  end
end
