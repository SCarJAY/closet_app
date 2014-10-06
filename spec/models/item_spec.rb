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

require 'rails_helper'

RSpec.describe Item, :type => :model do
  it { should validate_presence_of(:img_url) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:dress_code) }
  it { should validate_presence_of(:color) }
  it { should validate_presence_of(:size) }
  it { should belong_to(:user) }
  it { should have_many(:outfits) }
end

