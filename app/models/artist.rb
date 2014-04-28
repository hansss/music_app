class Artist < ActiveRecord::Base
  attr_accessible :city, :name

  has_many :songs
  has_many :comments
end
