# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Bottle.destroy_all
Brand.destroy_all
Flavor.destroy_all
Occasion.destroy_all
Varietal.destroy_all
Flavorassignment.destroy_all
Event.destroy_all
Varietalassignment.destroy_all

#Flavor
flavorseed = [{name: "Oak"}, {name: "Fig"}, {name: "Chocolate"}]
flavorseed.each do |flav|
  f = Flavor.new
  f.name = flav[:name]
  f.save
end
puts "There are now #{Flavor.count} flavors in the database"

#Event
eventseed = [{event: "BBQ"}, {event: "Wedding"}, {event: "Casual"}]
eventseed.each do |occ|
  e = Event.new
  e.event = occ[:event]
  e.save
end
puts "There are now #{Event.count} events in the database"

#Varietal
varietalseed = [{name: "Merlot"}, {name: "Malbec"}, {name: "Pinot Grigio"}]
varietalseed.each do |var|
  v = Varietal.new
  v.name = var[:name]
  v.save
end
puts "There are now #{Varietal.count} varietals in the database"

#Brand
brandseed = [{name: 'Sainati Wine'}, {name: 'Napa Valley Wines'}, {name: 'Cupcake'}]
brandseed.each do |brand_info|
  m = Brand.new
  m.name = brand_info[:name]
  m.save
end
puts "There are now #{Brand.count} brands in the database"

#Bottle
b = Brand.find_by_name('Sainati Wine')
data = [{name: "Awesome Wine", brand_id: b.id, year: 1982, color: "Red",
		appellation: "Napa Valley", style: "Meritage",
		alcohol: 14.2, production: 15000,
		price: 15.00, picture_source: "farm.jpg", description: "This is one of our favorite wines."},
        {name: "Cool Wine", brand_id: b.id, year: 1998, color: "Red",
    appellation: "Sonoma Valley", style: "Meritage",
    alcohol: 14.5, production: 15000,
    price: 18.00, description: "A very good wine, indeed."},
        {name: "Neat Wine", brand_id: b.id, year: 2009, color: "White",
    appellation: "California", style: "Crisp",
    alcohol: 12.2, production: 25000,
    price: 17.00,  description: "Good for summer"},
        {name: "Great Wine", brand_id: b.id, year: 2009, color: "White",
    appellation: "Napa", style: "Sweet",
    alcohol: 12.2, production: 25000,
    price: 12.00, description: "Good for the beach"},
        {name: "Best Wine", brand_id: b.id, year: 2009, color: "Red",
    appellation: "Napa", style: "Big",
    alcohol: 15.2, production: 25000,
    price: 30.00, description: "Steak night wine"}]

data.each do |wine_info|
  m = Bottle.new
  m.name = wine_info[:name]
  m.brand_id = wine_info[:brand_id]
  m.year = wine_info[:year]
  m.color = wine_info[:color]
  m.appellation = wine_info[:appellation]
  m.style = wine_info[:style]
  m.alcohol = wine_info[:alcohol]
  m.production = wine_info[:production]
  m.price = wine_info[:price]
  m.picture_source = wine_info[:picture_source]
  m.description = wine_info[:description]
  m.save
end

puts "There are now #{Bottle.count} wines in the database"

#Flavor Assignments
bott = Bottle.find_by_name('Awesome Wine')
flav = Flavor.find_by_name('Oak')
faseed = Flavorassignment.new
faseed.bottle_id = bott.id
faseed.flavor_id = flav.id
faseed.save
puts "There are now #{Flavorassignment.count} flavor-bottle pairs in the database"
