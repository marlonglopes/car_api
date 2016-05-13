require 'rails_helper'

describe Location, type: :model do
  it "3 closest cars from the database and return them ordered by distance from the point receive" do
    expect(Location.near([51.5444204,-0.22707]).limit(3).to_json).to eq(good_response_3.to_json)

  end
end

def good_response_3
  [
    {
        "description":"Willesden - Milverton Rd",
        "latitude":"51.543431",
        "longitude":"-0.222418"
      },
      {
        "description":"Willesden - Peter Ave",
        "latitude":"51.54184",
        "longitude":"-0.232108"
      },
      {
        "description":"Willesden - Acland Rd",
        "latitude":"51.548941",
        "longitude":"-0.227334"
      }
    ]
end
