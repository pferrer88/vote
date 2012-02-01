class AddAssignedToUsers < ActiveRecord::Migration
    def self.up
      change_table :users do |t|
        t.references :assigned_to, :polymorphic => true
        t.index      :assigned_to_id
        t.boolean    :staff, :default => false
      end
    end

    def self.down
      change_table :users do |t|
        t.remove_references :assigned_to, :polymorphic => true
        t.remove :staff
      end
    end
  end
