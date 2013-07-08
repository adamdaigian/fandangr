class Movie < ActiveRecord::Base
  attr_accessible :film, :screen_id, :theater, :ticket_id

  belongs_to :film
  belongs_to :screen_id
  belongs_to :theater
  has_many :ticket_ids

  validates :film, presensce => true
  validates :ticket_ids, presence => true

end



