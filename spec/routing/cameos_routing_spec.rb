require "rails_helper"

RSpec.describe CameosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cameos").to route_to("cameos#index")
    end

    it "routes to #new" do
      expect(:get => "/cameos/new").to route_to("cameos#new")
    end

    it "routes to #show" do
      expect(:get => "/cameos/1").to route_to("cameos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cameos/1/edit").to route_to("cameos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cameos").to route_to("cameos#create")
    end

    it "routes to #update" do
      expect(:put => "/cameos/1").to route_to("cameos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cameos/1").to route_to("cameos#destroy", :id => "1")
    end

  end
end
