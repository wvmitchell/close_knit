# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task :load_crimes do
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
