require 'pry'

class Crime < ActiveRecord::Base
  validates_presence_of :lat, :lng, :offense, :time, :neighborhood

  def self.count_near(lat, lng)
    self.all.select do |crime|
      Math.sqrt((lat-crime.lat)**2 + (lng-crime.lng)**2) <= AVG_RAD
    end
  end
end
