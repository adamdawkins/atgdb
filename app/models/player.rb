class Player < ActiveRecord::Base
  has_and_belongs_to_many :teams
  has_many :managers, :through => :teams
  has_many :ratings, :as => :rateable
  validates_presence_of :first_name, :message => "can't be blank"
  validates_presence_of :last_name, :message => "can't be blank"
  validates_uniqueness_of :last_name, :message => "must be unique", :scope => :first_name
  
  def name
    "#{first_name} #{last_name}"
  end
  
  def rating #mean rating
    ratings.collect(&:rating_value).sum.to_f / ratings.size
  end
  
  def weighted_rating
    
  end
end

