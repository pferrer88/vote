class AddDetailsToStates < ActiveRecord::Migration
  def change
    add_column :states, :country_id, :integer
    add_column :states, :center_id, :integer
  end
end
