require 'rails_helper'

RSpec.describe "Cameos", :type => :request do
  describe "GET /cameos" do
    it "works! (now write some real specs)" do
      get cameos_path
      expect(response.status).to be(200)
    end
  end
end
