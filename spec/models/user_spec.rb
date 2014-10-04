require 'rails_helper'

RSpec.describe User, :type => :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should have_many(:items) }
  it { should have_many(:outfits) }
  it { should have_secure_password }
end
