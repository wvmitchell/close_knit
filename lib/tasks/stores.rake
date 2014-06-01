require 'csv'

namespace :stores do
  desc 'load stores from csv'
  task :load_stores => :environment do
    store_file = CSV.open('datasets/food_stores.csv', 'r', headers: true, header_converters: :symbol)
    store_file.each do |row|
      Stores.create(
        lng: row[:point_x],
        lat: row[:point_y],
        address: row[:address_line1],
        name: row[:store_name]
      )
    end
  end
end
  
