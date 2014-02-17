require "spec_helper"

describe PresidentsController do
  describe "routing" do

    it "routes to #index" do
      get("/presidents").should route_to("presidents#index")
    end

    it "routes to #new" do
      get("/presidents/new").should route_to("presidents#new")
    end

    it "routes to #show" do
      get("/presidents/1").should route_to("presidents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/presidents/1/edit").should route_to("presidents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/presidents").should route_to("presidents#create")
    end

    it "routes to #update" do
      put("/presidents/1").should route_to("presidents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/presidents/1").should route_to("presidents#destroy", :id => "1")
    end

  end
end
