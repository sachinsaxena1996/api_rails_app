require "rails_helper"

RSpec.describe DistanceSearchesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/distance_searches").to route_to("distance_searches#index")
    end

    it "routes to #new" do
      expect(:get => "/distance_searches/new").to route_to("distance_searches#new")
    end

    it "routes to #show" do
      expect(:get => "/distance_searches/1").to route_to("distance_searches#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/distance_searches/1/edit").to route_to("distance_searches#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/distance_searches").to route_to("distance_searches#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/distance_searches/1").to route_to("distance_searches#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/distance_searches/1").to route_to("distance_searches#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/distance_searches/1").to route_to("distance_searches#destroy", :id => "1")
    end

  end
end
