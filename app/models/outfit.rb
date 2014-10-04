class Outfit < ActiveRecord::Base
  belongs_to :user
  has_many :items, through: :cameos
  validates_presence_of :name
end
