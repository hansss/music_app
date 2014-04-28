class CreateArtistsAndComments < ActiveRecord::Migration
  def change
     create_table :artists do |t|
      t.string "name"
      t.string "city"
      t.timestamps
    end

    create_table :comments do |t|
      t.text "content"
      t.belongs_to :artist
      t.timestamps
    end

  
  end
end
