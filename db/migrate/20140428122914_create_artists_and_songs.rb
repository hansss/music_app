class CreateArtistsAndSongs < ActiveRecord::Migration
  def change
     create_table :artists do |t|
      t.string "name"
      t.string "city"
      t.timestamps
    end

    create_table :songs do |t|
      t.string "name"
      t.belongs_to :artist
      t.timestamps
    end



  end
end
