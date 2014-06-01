namespace :neighborhoods do
  desc 'load neighborhood data'
  task :load => :environment do
    hood_file = CSV.open('datasets/neighborhood_lat_lngs.csv', 'r', headers: true, header_converters: :symbol)
    hood_file.each do |row|
      Neighborhood.create(
        lat: row[:lat],
        lng: row[:long],
        name: row[:nbhd_name]
      )
    end
  end
end
