class AddUserName < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :avatar_id, :string
  end
end
