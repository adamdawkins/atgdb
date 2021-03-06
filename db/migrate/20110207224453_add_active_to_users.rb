class AddActiveToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :activated, :boolean, :default => true, :null => false
  end

  def self.down
    remove_column :users, :active
  end
end
