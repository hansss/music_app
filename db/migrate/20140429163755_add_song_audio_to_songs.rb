class AddSongAudioToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :song_audio, :string
  end
end
