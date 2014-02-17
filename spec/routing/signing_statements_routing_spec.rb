require "spec_helper"

describe SigningStatementsController do
  describe "routing" do

    it "routes to #index" do
      get("/signing_statements").should route_to("signing_statements#index")
    end

    it "routes to #new" do
      get("/signing_statements/new").should route_to("signing_statements#new")
    end

    it "routes to #show" do
      get("/signing_statements/1").should route_to("signing_statements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/signing_statements/1/edit").should route_to("signing_statements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/signing_statements").should route_to("signing_statements#create")
    end

    it "routes to #update" do
      put("/signing_statements/1").should route_to("signing_statements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/signing_statements/1").should route_to("signing_statements#destroy", :id => "1")
    end

  end
end
