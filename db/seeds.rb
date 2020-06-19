# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'fishfwcspecies_import_final.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Fish.new
  t.name = row[0]
  t.image_url = row[1]
  t.category = row[2]
  t.details_url = row[3]
  t.region = row[4]
  t.habitat = row[5]
  t.save
  puts "#{t.name} saved"
end

puts "There are now #{Fish.count} rows in the fishies table"
