class Neighborhood < ActiveRecord::Base
  validates_presence_of :lat, :lng, :name

  def crime_score
    @crime_score ||= CrimeScore.calculate(lat, lng)
  end

  def recreation_score
    @recreation_score ||= RecreationScore.calculate(lat, lng)
  end
end
