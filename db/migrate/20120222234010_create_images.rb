class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :img
      t.string :name
      t.string :description
      t.references :page

      t.timestamps
    end
    add_index :images, :page_id
  end
end
