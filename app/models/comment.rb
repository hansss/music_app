class Comment < ActiveRecord::Base
  attr_accessible :content, :song_id

  belongs_to :song
  belongs_to :artist

end
