namespace :crime do
  desc 'load crimes from a csv'
  task :load_crimes => :environment do
    crime_file = CSV.open('datasets/crime_data.csv', 'r', headers: true, header_converters: :symbol)
    crime_file.each do |row|
      Crime.create(
        lat: row[:geo_lat],
        lng: row[:geo_lon],
        offense: row[:offense_type_id],
        time: Time.parse(row[:reported_date]),
        neighborhood: row[:neighborhood_id]
      )
    end
  end
end
