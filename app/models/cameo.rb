# == Schema Information
#
# Table name: cameos
#
#  id         :integer          not null, primary key
#  item_id    :integer
#  outfit_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Cameo < ActiveRecord::Base
  belongs_to :item
  belongs_to :outfit
end
