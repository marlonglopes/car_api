class CarsController < ApplicationController

  def index

    latitude, longitude = location_params
    fail "Invalid Params"  unless (latitude && longitude)
    @locations = Location.near([latitude, longitude]).limit(10)

    render json: { cars: @locations }
  rescue => e
    render json: { error: e.message }, status: :bad_request

  end

  def welcome
    render json: {message: "Welcome !!!"}
  end

private

  def location_params
    params["location"].split(",")
  rescue
    []
  end

end
