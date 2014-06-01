namespace :parks do
  desc 'loads local parks from a csv'
  task :load_parks => :environment do
    park_file = CSV.open('datasets/parks.csv', 'r', headers: true, header_converters: :symbol)
    park_file.each do |row|
      Park.create(
        lat: row[:latitude],
        lng: row[:longitude],
        name: row[:formal_name],
        facilities: row[:facilities],
        neighborhood: row[:location].downcase
      )
    end
  end
end
