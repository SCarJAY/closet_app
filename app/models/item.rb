# == Schema Information
#
# Table name: items
#
#  id             :integer          not null, primary key
#  img_url        :string(255)      not null
#  name           :string(255)      not null
#  category       :string(255)      not null
#  dress_code     :string(255)
#  color          :string(255)      not null
#  size           :string(255)      not null
#  brand          :string(255)
#  purchased_from :string(255)
#  user_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Item < ActiveRecord::Base
  belongs_to :user
  has_many :cameos
  has_many :outfits, through: :cameos
  validates_presence_of :img_url, :name, :category, :dress_code, :color, :size
end
