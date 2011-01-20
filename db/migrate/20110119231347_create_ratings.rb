class CreateRatings < ActiveRecord::Migration
  def self.up
    create_table :ratings do |t|
      t.integer :rating_value
      t.integer :rateable_id
      t.string :rating_type

      t.timestamps
    end
  end

  def self.down
    drop_table :ratings
  end
end
