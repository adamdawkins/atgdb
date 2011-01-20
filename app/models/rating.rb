class Rating < ActiveRecord::Base
  belongs_to :rateable, :polymorphic => true
  
  validates_numericality_of :rating_value, :message => "is not a number"
  validates_inclusion_of :rating_value, :in => 1..10,  :message => "extension %s is not included in the list"
end
