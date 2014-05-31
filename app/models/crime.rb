class Crime < ActiveRecord::Base
  validates_presence_of :lat, :lng, :offense, :time, :neighborhood
end
