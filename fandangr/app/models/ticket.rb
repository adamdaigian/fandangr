class Ticket < ActiveRecord::Base
  attr_accessible :date, :movie_id, :screen_id, :theater_id, :time

  belongs_to :movie_id
  belongs_to :screen_id
  belongs_to :theater_id

  validates :seat_id, :presence => true
  validates :movie_id :presence => true
end


