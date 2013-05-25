# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Bottle.destroy_all

data = [{name: "Awesome Wine", year: 1980, color: "Red"}]

data.each do |wine_info|
  m = Bottle.new
  m.name = wine_info[:name]
  m.year = wine_info[:year]
  m.color = wine_info[:color]
  m.save
end

puts "There are now #{Bottle.count} wines in the database"
