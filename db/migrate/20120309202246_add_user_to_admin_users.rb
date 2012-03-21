class AddUserToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :user_id, :integer
    add_index :admin_users, :user_id
  end
end
