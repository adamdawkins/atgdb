class ChangeRatingTypeToRateableTypeForRatings < ActiveRecord::Migration
  def self.up
    rename_column :ratings, :rating_type, :rateable_type
  end

  def self.down
    rename_column :ratings, :rateable_type, :rating_type
  end
end
