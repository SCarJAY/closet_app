require 'rails_helper'

RSpec.describe Outfit, :type => :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:items).through(:cameos) }
  it { should belong_to(:user) }
end
