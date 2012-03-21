class AddDetailsToPages < ActiveRecord::Migration
  def change
    add_column :pages, :center_id, :integer
    add_column :pages, :pre_content, :text
    add_column :pages, :post_content, :text
    add_column :pages, :modal, :text
    add_column :pages, :published, :boolean
    add_index :pages, :center_id
  end
end
