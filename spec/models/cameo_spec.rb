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

require 'rails_helper'

RSpec.describe Cameo, :type => :model do
  it { should belong_to(:item) }
  it { should belong_to(:outfit) }
end
