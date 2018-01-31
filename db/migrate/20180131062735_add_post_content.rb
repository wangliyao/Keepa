class AddPostContent < ActiveRecord::Migration[5.0]
  def change
  	add_column :posts, :content_source, :string
  end
end
