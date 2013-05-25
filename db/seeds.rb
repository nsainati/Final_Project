# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Bottle.destroy_all

data = [{name: "Awesome Wine", year: 1982, color: "Red", 
		varietal: "Merlot", appellation: "Napa Valley", style: "Meritage", 
		flavors: "Currant, cherry, fig", alcohol: 14.2, production: 15000,
		price: 15.00, picture_id: 1, occasion: "Great for BBQ", description: "This is one of our favorite wines."}]

data.each do |wine_info|
  m = Bottle.new
  m.name = wine_info[:name]
  m.year = wine_info[:year]
  m.color = wine_info[:color]
  m.varietal = wine_info[:varietal]
  m.appellation = wine_info[:appellation]
  m.style = wine_info[:style]
  m.flavors = wine_info[:flavors]
  m.alcohol = wine_info[:alcohol]
  m.production = wine_info[:production]
  m.price = wine_info[:price]
  m.picture_id = wine_info[:picture_id]
  m.occasion = wine_info[:occasion]
  m.description = wine_info[:description]
  m.save
end

puts "There are now #{Bottle.count} wines in the database"
