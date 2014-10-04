# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)      not null
#  email           :string(255)      not null
#  password_digest :string(255)      not null
#  city            :string(255)      not null
#  state           :string(255)      not null
#  role            :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

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
