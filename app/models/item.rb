class Item < ActiveRecord::Base
  belongs_to :user
  has_many :cameos
  has_many :outfits, through: :cameos
  validates_presence_of :img_url, :name, :category, :dress_code, :color, :size
end
