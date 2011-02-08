class Team < ActiveRecord::Base
  has_and_belongs_to_many :players
  has_and_belongs_to_many :managers
  has_many :ratings, :as => :rateable
  validates_presence_of :name
  validates_presence_of :year
  validates_uniqueness_of :year, :message => "must be unique", :scope => :name
  
  
  def label
    "#{name} (#{year})"
  end
  
  def rating # mean rating
    ratings.collect(&:rating_value).sum.to_f / ratings.size
  end
  
  def weighted_rating
    if rating > 0
      ((rating * ratings.size + Rating.mean * MINIMUM_NUMBER_OF_RATINGS) / (ratings.size + MINIMUM_NUMBER_OF_RATINGS)).round(1)
    else
      0
    end
  end  
end
