class Song < ActiveRecord::Base
  attr_accessible :name, :artist_id, :comment_ids, :song_audio, :song_image
  mount_uploader :song_audio, SongAudioUploader
  mount_uploader :song_image, SongImageUploader

  has_many :comments
  belongs_to :artist

  validates :name, presence: true
  validates :song_audio, presence: true

  def get_song_image
    song_image_url(:thumb) || "/uploads/song/song_image/default_song_image.jpeg"
  end


end
