class Location < ActiveRecord::Base

  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  geocoded_by :description   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode  # auto-fetch address

end
