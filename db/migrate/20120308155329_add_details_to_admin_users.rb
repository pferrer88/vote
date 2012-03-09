class AddDetailsToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :center_id, :integer
    add_column :admin_users, :super, :boolean
    add_index :admin_users, :center_id
  end
end
