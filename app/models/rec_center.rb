class RecCenter < ActiveRecord::Base
  validates_presence_of :name, :lat, :lng, :facilities, :programs, :phone, :address
end
