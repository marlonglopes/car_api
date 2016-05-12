class CarsController < ApplicationController

  # GET /locations
  # GET /locations.json
  def index
    @locations = Location.all

    render json: @locations
  end

  def welcome
    render text: "Welcome !!!"
  end

end
