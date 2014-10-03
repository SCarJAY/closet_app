require "rails_helper"

RSpec.describe OutfitsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/outfits").to route_to("outfits#index")
    end

    it "routes to #new" do
      expect(:get => "/outfits/new").to route_to("outfits#new")
    end

    it "routes to #show" do
      expect(:get => "/outfits/1").to route_to("outfits#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/outfits/1/edit").to route_to("outfits#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/outfits").to route_to("outfits#create")
    end

    it "routes to #update" do
      expect(:put => "/outfits/1").to route_to("outfits#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/outfits/1").to route_to("outfits#destroy", :id => "1")
    end

  end
end
