class Artist < ActiveRecord::Base
  has_secure_password
  ROLES = %w[admin banned]
  validates :email, presence: true, uniqueness: true

  attr_accessible :city, :name, :email, :password, :password_confirmation

  has_many :songs
  has_many :comments

  def role?(role)
    self.role.to_s == role.to_s
  end
end
