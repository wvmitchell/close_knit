class Neighborhood < ActiveRecord::Base
  validates_presence_of :lat, :lng, :name

  def crime_score
    #@crime_score ||= CrimeScore.calculate(lat, lng)
    89
  end

  def recreation_score
    #@recreation_score ||= RecreationScore.calculate(lat, lng)
    76
  end

  def social_score
    #@social_score ||= SocialScore.calculate(lat,lng)
    88
  end
end
