namespace :rec_centers do
  desc 'load all rec centers from csv'
  task :load_centers => :environment do
    rec_file = CSV.open('datasets/recreation_centers.csv', 'r', headers: true, header_converters: :symbol)
    rec_file.each do |row|
      RecCenter.create(
        name: row[:rec_name],
        lat: row[:latitude],
        lng: row[:longitude],
        facilities: row[:marketed_facilities],
        programs: row[:marketed_programs],
        phone: row[:phone],
        address: row[:address_line1]
      )
    end
  end
end
