class Team < ActiveRecord::Base
  has_and_belongs_to_many :players
  has_and_belongs_to_many :managers
  validates_presence_of :name
  validates_presence_of :year
  validates_uniqueness_of :year, :message => "must be unique", :scope => :name
  
  
  def label
    "#{name} (#{year})"
  end
end
