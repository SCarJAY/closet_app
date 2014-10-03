class Item < ActiveRecord::Base
  belongs_to :user
  has_many :outfits, through :cameos
end
