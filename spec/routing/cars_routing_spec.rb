require "rails_helper"

describe CarsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cars").to route_to("cars#index")
    end

    it "routes to #welcome" do
      expect(:get => "/").to route_to("cars#welcome")
    end

  end
end
