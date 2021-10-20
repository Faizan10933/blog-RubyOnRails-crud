class AddUserIdToBlog2s < ActiveRecord::Migration[6.1]
  def change
    add_column :blog2s, :user_id, :integer
    add_index :blog2s, :user_id
  end
end
