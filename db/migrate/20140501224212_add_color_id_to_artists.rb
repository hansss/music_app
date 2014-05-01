class AddColorIdToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :color_id, :integer
  end
end
