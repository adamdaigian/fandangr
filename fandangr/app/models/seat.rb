class Seat < ActiveRecord::Base
  attr_accessible :movie_id, :number, :screen_id, :theater_id

  belongs_to :theater_id
  belongs_to :screen_id
  belongs_to :movie_id
  belongs_to :screen_id

  validates :theater_id, :presence => true
  validates :movie_id, :presence => true


end
