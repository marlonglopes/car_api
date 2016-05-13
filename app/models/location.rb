class Location < ActiveRecord::Base

  reverse_geocoded_by :latitude, :longitude

  def as_json(options={})
    {
      description: description,
      latitude: latitude,
      longitude: longitude
    }
  end

end
