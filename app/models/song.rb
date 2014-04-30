class Song < ActiveRecord::Base
  attr_accessible :name, :artist_id, :comment_ids, :song_audio
  mount_uploader :song_audio, SongAudioUploader

  has_many :comments
  belongs_to :artist

  validates :name, presence: true
  validates :song_audio, presence: true
end
