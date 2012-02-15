class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :name
      t.string :title
      t.text :content
      t.integer :recipients
      t.date :sent

      t.timestamps
    end
  end
end
