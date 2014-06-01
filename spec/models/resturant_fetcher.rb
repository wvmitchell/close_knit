require 'spec_helper'

describe ResturantFetcher do

  it 'returns a list of nearby resturants', :vrc do
    resturants = ResturantFetcher.fetch(39, -104)
    resturants.each do |resturant|
      resturant['name'].should_not be nil
      resturant['location'].should_not be nil
    end
  end

end
