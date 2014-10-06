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

require 'rails_helper'

RSpec.describe Outfit, :type => :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:items).through(:cameos) }
  it { should belong_to(:user) }
end
