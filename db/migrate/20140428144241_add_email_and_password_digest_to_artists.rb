class AddEmailAndPasswordDigestToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :email, :string
    add_column :artists, :password_digest, :string
  end
end
