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

