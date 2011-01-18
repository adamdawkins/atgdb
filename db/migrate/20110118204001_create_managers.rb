class CreateManagers < ActiveRecord::Migration
  def self.up
    create_table :managers_teams, :id => false do |t|
      t.integer :manager_id
      t.integer :team_id
    end
  end

    def self.down
      drop_table :managers_teams
    end
  end
