class Property < ActiveRecord::Base
  geocoded_by :address, latitude: :lat, longitude: :lng
  validates_presence_of :address, :value
  after_validation :geocode
end
