class Resturant < ActiveRecord::Base
  validates_presence_of :lat, :lng, :name, :address, :rating
end
