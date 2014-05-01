class Color < ActiveRecord::Base
  attr_accessible :name, :code
  has_many :artists
end