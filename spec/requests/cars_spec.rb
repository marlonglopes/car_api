require 'rails_helper'

describe "Cars", type: :request do
  describe "GET /cars" do
    it "should result in bad_request" do
      get '/cars'
      expect(response).to have_http_status(400)
    end
    it "should result in success" do
      get "/cars?location=51,51"
      expect(response).to have_http_status(200)
    end
  end
end
