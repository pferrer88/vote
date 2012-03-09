class CreateCenters < ActiveRecord::Migration
  def change
    create_table :centers do |t|
      t.references :country
      t.string :name
      t.string :city
      t.string :state
      t.string :address
      t.string :address2
      t.string :zip
      t.string :phone
      t.string :website
      t.string :email
      t.string :hours
      t.text :description

      t.timestamps
    end
    add_index :centers, :country_id
  end
end
