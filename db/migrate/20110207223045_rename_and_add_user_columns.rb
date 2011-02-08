class RenameAndAddUserColumns < ActiveRecord::Migration
  def self.up
    rename_column :users, :password, :crypted_password
    add_column :users, :password_salt, :string
    add_column :users, :persistence_token, :string
  end

  def self.down
  end
end
