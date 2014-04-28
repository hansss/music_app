class Song < ActiveRecord::Base
  attr_accessible :name, :artist_id, :comment_ids

  has_many :comments
  belongs_to :artist
end
