class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lastName, :string
    add_column :users, :comfirmed, :boolean, :default => false
    add_column :users, :embajador, :boolean, :default => false
    add_column :users, :state_id, :integer
    add_column :users, :city, :string
    add_column :users, :cedula, :integer
    add_column :users, :bday, :date
    add_column :users, :zip, :integer
    add_column :users, :phone, :bigint
    add_column :users, :points, :integer, :default => 0
    add_column :users, :esta_inscrito, :boolean
    add_column :users, :tiene_intencion, :boolean
    add_column :users, :tiene_cedula, :boolean
  end
end
