class User < ActiveRecord::Base
  has_many :items
  has_many :outfits
  has_secure_password
  validates_length_of :name, in: 2..20
end
