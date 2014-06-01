namespace :neighborhoods do
  desc 'load neighborhood data'
  task :load => :environment do
    hood_file = CSV.open('datasets/neighborhood_lat_lngs.csv', 'r', headers: true, header_converters: :symbol)
    hood_file.each do |row|
      Neighborhood.create(
        lat: row[:lat],
        lng: row[:long],
        name: row[:nbhd_name].downcase
      )
    end
  end

  desc 'update hoods with avg_rad'
  task :update_radii => :environment do
    rad_file = CSV.open('datasets/hood_radii.csv', 'r', headers: true, header_converters: :symbol)
    rad_file.each do |row|
      name = row[:hood] ? row[:hood].downcase : ""
      hood = Neighborhood.find_by name: name
      if hood
        hood.avg_rad = row[:radius]
        hood.save
      end
    end

    Neighborhood.all.each do |hood|
      hood.avg_rad = 0.55 unless hood.avg_rad
      hood.save
    end
  end
end
