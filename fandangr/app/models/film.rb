class Film < ActiveRecord::Base
  attr_accessible :info, :name

  belongs_to :theater

  validates :theater, :presence => true
end
