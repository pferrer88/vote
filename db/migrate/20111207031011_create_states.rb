class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.string :short
      t.integer :totalVoters
      t.integer :registeredVoters

      t.timestamps
    end
  end
end
