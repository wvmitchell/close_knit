class Crime < ActiveRecord::Base
  validates_presence_of :lat, :lng, :offense, :address, :time, :neighborhood
end
