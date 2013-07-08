class Theater < ActiveRecord::Base
  attr_accessible :name, :location, :screen

  has_many :movies
  has_many :screens
  has_many :films

  validates :film_id, :presence => true
end
