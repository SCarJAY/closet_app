require 'rails_helper'

RSpec.describe Cameo, :type => :model do
  it { should belong_to(:item) }
  it { should belong_to(:outfit) }
end
