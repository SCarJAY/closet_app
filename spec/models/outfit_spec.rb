require 'rails_helper'

RSpec.describe Outfit, :type => :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:items) }
  it { should belong_to(:users) }
end
