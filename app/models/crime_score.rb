class CrimeScore

  def self.calculate(lat, lng)
    num_crimes = Crime.count_near(lat, lng)
    return num_crimes
  end

end
