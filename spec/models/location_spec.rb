require 'rails_helper'

describe Location, type: :model do
  it "3 closest cars from the database and return them ordered by distance from the point receive" do
    expect(Location.near([51.5444204,-0.22707]).limit(3).to_json).to eq(good_response_3.to_json)
  end
  it "10 closest cars from the database and return them ordered by distance from the point receive" do
    expect(Location.near([51.5444204,-0.22707]).limit(10).to_json).to eq(good_response_10.to_json)
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

def good_response_10
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
    },
    {
      "description":"Willesden - Phillimore",
      "latitude":"51.539274",
      "longitude":"-0.227563"
    },
    {
      "description":"Willesden - Clare Rd",
      "latitude":"51.546266",
      "longitude":"-0.237091"
    },
    {
      "description":"Willesden - Belton Rd",
      "latitude":"51.549646",
      "longitude":"-0.236383"
    },
    {
      "description":"Willesden - Lydford Rd S",
      "latitude":"51.550116",
      "longitude":"-0.216824"
    },
    {
      "description":"Kilburn - Christchurch Ave S",
      "latitude":"51.542523",
      "longitude":"-0.211544"
    },
    {
      "description":"Kilburn - Dawlish Rd",
      "latitude":"51.549744",
      "longitude":"-0.213119"
    },
    {
      "description":"Willesden - Lydford Rd N",
      "latitude":"51.552305",
      "longitude":"-0.215402"
    }
  ]
end
