class CreateCarta < ActiveRecord::Migration
  def change
    create_table :carta do |t|
      t.string :name
      t.string :title
      t.text :content
      t.boolean :active

      t.timestamps
    end
    
  end
end
