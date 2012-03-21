class AddFbToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fb_token, :text
    add_column :users, :fb_image, :string
  end
end
