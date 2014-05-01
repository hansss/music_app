class Comment < ActiveRecord::Base
  attr_accessible :content, :song_id

  validates :content, presence: true

  belongs_to :song
  belongs_to :artist

end
