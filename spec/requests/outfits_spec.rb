require 'rails_helper'

RSpec.describe "Outfits", :type => :request do
  describe "GET /outfits" do
    it "works! (now write some real specs)" do
      get outfits_path
      expect(response.status).to be(200)
    end
  end
end
