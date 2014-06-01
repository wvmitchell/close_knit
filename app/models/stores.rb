class Stores < ActiveRecord::Base
  validates_presence_of :lat, :lng, :address, :name
end
