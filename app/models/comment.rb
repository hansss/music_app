class Comment < ActiveRecord::Base
  attr_accessible :content

  belongs_to :song
  belongs_to :artist

end
