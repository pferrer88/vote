class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.references :user
      t.references :product
      t.references :state
      t.integer :quantity
      t.integer :points
      t.string :address
      t.string :city
      t.string :status
      t.integer :zip
      t.integer :phone

      t.timestamps
    end
    add_index :exchanges, :user_id
    add_index :exchanges, :product_id
  end
end
