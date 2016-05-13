require 'rails_helper'

describe CarsController, type: :controller do
  describe "GET #index" do
    it "assigns all locations as @locations" do
      locations = Location.near([51.517845,-0.194014]).limit(10)
      get :index, {location: "51.517845,-0.194014"}
      expect(assigns(:locations)).to eq(locations)
    end
    
    it "returns success when params are ok" do
      locations = Location.near([51.517845,-0.194014]).limit(10)
      get :index, {location: "51.517845,-0.194014"}
      expect(response).to be_success
    end

    it "returns a bad request when no params" do
      get :index
      expect(response).to be_bad_request
    end
  end

end
