class Theater < ActiveRecord::Base
  attr_accessible :name, :location, :screen

  has_many_and_belongs_to :movies
  has_many :screens
  has_many :films

  validates :films, :presense => true
end
