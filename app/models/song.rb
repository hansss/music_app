class Song < ActiveRecord::Base
  attr_accessible :name

  has_many :comments
  belongs_to :artist
end
