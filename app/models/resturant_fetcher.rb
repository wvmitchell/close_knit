require 'pry'

class ResturantFetcher
  include Yelp::V2::Search::Request

  def self.fetch(lat, lng)
    client = Yelp::Client.new
    request = GeoPoint.new(term: 'resturant', latitude: lat, longitude: lng)
    response = client.search request
    response['businesses']
  end

end
