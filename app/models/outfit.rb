# == Schema Information
#
# Table name: outfits
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Outfit < ActiveRecord::Base
  belongs_to :user
  has_many :cameos
  has_many :items, through: :cameos
  validates_presence_of :name
end
