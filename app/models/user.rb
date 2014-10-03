class User < ActiveRecord::Base
  has_many :items
  has_many :outfits
  has_secure_password
end
