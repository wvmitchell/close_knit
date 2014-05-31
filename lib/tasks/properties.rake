require 'csv'

namespace :property do
  desc 'load properties from csv'
  task :load_properties => :environment do
    property_file = CSV.open('datasets/property_values.csv', 'r', headers: true, header_converters: :symbol)
    property_file.each do |row|
      Property.create(
        address: "#{row[:owner_address_line1]}, #{row[:owner_zip]}",
        value: row[:total_value]
      )
    end
  end
end
