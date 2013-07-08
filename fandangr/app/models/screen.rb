class Screen < ActiveRecord::Base
  attr_accessible :film_id, :movie_id, :seat_id, :theater_id, :ticket_id

  has_many :movie_ids
  belongs_to :theater_id
  has_many :film_ids
  belongs_to :ticket_ids

  validates :film_id, presence => true
  validates :ticket_id, presence => true
  validates :movie_id, presensce => true



end
