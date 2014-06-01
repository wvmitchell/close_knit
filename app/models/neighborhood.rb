class Neighborhood < ActiveRecord::Base
  validates_presence_of :lat, :lng, :name

  def scores
    {
      crime: crime_score,
      recreation: recreation_score,
      social: social_score
    }
  end

  def crime_score
    #@crime_score ||= CrimeScore.calculate(lat, lng)
    89
  end

  def recreation_score
    #@recreation_score ||= RecreationScore.calculate(lat, lng)
    89
  end

  def social_score
    #@social_score ||= SocialScore.calculate(lat,lng)
    89
  end

end
