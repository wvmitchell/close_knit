class Park < ActiveRecord::Base
  validates_presence_of :lat, :lng, :name, :facilities
end
