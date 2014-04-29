class AddProfileImageToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :profile_image, :string
  end
end
