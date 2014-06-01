require 'csv'

namespace :property do
  desc 'load properties from csv'
  task :load_properties => :environment do
    property_file = CSV.open('datasets/property_values.csv', 'r', headers: true, header_converters: :symbol)
    property_file.each do |row|
      if row[:total_value].to_i > 200000
        p = Property.new(
          address: "#{row[:owner_address_line1]}, #{row[:owner_zip]}",
          value: row[:total_value]
        )
        p.save
        p.destroy unless (p.lat && p.lng)
      end
    end
  end
end
