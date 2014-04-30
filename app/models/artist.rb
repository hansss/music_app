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
end
