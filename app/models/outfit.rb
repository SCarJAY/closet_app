class Outfit < ActiveRecord::Base
  belongs_to :user
  has_many :items, through :cameos
end
