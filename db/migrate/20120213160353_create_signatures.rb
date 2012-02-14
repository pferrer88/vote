class CreateSignatures < ActiveRecord::Migration
  def change
    create_table :signatures do |t|
      t.string :name
      t.string :lastName
      t.string :email
      t.integer :cedula
      t.references :cartum

      t.timestamps
    end
    add_index :signatures, :cartum_id
  end
end
