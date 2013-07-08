require "spec_helper"

describe ScreensController do
  describe "routing" do

    it "routes to #index" do
      get("/screens").should route_to("screens#index")
    end

    it "routes to #new" do
      get("/screens/new").should route_to("screens#new")
    end

    it "routes to #show" do
      get("/screens/1").should route_to("screens#show", :id => "1")
    end

    it "routes to #edit" do
      get("/screens/1/edit").should route_to("screens#edit", :id => "1")
    end

    it "routes to #create" do
      post("/screens").should route_to("screens#create")
    end

    it "routes to #update" do
      put("/screens/1").should route_to("screens#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/screens/1").should route_to("screens#destroy", :id => "1")
    end

  end
end
