class CreateCloumns < ActiveRecord::Migration[5.0]
  def change
    create_table :cloumns do |t|
      t.string :title
      t.string :description
      t.integer :content_type

      t.timestamps
    end
    add_index :cloumns, :content_type
  end
end
