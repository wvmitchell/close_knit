class CrimeScore

  def self.calculate
    neighborhood_crimes = Neighborhood.all.collect do |hood|
      [hood.name, Crime.count_near(hood)]
    end

    neighborhood_crimes.sort! do |num_crimes|
      num_crimes[1]
    end

    score_deviation = 100.0 / neighborhood_crimes.count

    neighborhood_crimes.collect.with_index do |hood, index|
      [hood[0], (score_deviation * (index+1)).floor]
    end
  end

  def self.scores
    @scores ||= Hash[calculate]
  end

end
