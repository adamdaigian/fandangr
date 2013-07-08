class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :username

  has_many :tickets
  has_many :movies, :through => :tickets

  validates :email, :presence s=> true

end
