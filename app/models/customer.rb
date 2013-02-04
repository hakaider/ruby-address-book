class Customer < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :name

  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
end
