class Crime < ActiveRecord::Base
  validates_presence_of :lat, :lng, :offense, :time, :neighborhood

  def self.count_near(hood)
    where(neighborhood: hood.name).count
  end

end
