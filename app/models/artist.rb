class Artist < ActiveRecord::Base
  has_secure_password
  ROLES = %w[admin banned]
  validates :email, presence: true, uniqueness: true

  attr_accessible :city, :name, :email, :password, :password_confirmation, :profile_image, :cover_image

  
  mount_uploader :profile_image, ProfileImageUploader
  mount_uploader :cover_image, CoverImageUploader
  has_many :songs
  has_many :comments

  def role?(role)
    self.role.to_s == role.to_s
  end

  def get_profile_image
    profile_image_url(:profile_image) || "/uploads/artist/profile_image/default_image.jpeg"
  end

   def get_index_profile_image
    profile_image_url(:index) || "/uploads/artist/profile_image/default_image.jpeg"
  end

  def get_cover_image
    cover_image.url || "/uploads/artist/cover_image/default_cover_image.jpg"
  end

end
