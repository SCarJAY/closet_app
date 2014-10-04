class Outfit < ActiveRecord::Base
  belongs_to :user
  has_many :cameos
  has_many :items, through: :cameos
  validates_presence_of :name
end
