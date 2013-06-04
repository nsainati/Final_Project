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
		price: 15.00, picture_id: 1, occasion: "BBQ", description: "This is one of our favorite wines."},
        {name: "Cool Wine", year: 1998, color: "Red", 
    varietal: "Merlot", appellation: "Sonoma Valley", style: "Meritage", 
    flavors: "Berries, earthy", alcohol: 14.5, production: 15000,
    price: 18.00, picture_id: 1, occasion: "Wedding", description: "A very good wine, indeed."}, 
        {name: "Neat Wine", year: 2009, color: "White", 
    varietal: "Sauvignon blanc", appellation: "California", style: "Crisp", 
    flavors: "Melon, citrus", alcohol: 12.2, production: 25000,
    price: 17.00, picture_id: 1, occasion: "Beach", description: "Good for summer"},
        {name: "Great Wine", year: 2009, color: "White", 
    varietal: "Chardonnay", appellation: "Napa", style: "Sweet", 
    flavors: "Peach", alcohol: 12.2, production: 25000,
    price: 12.00, picture_id: 1, occasion: "Beach", description: "Good for the beach"},
        {name: "Best Wine", year: 2009, color: "Red", 
    varietal: "Cabernet Sauvignon", appellation: "Napa", style: "Big", 
    flavors: "Red fruit, berries, smoke", alcohol: 15.2, production: 25000,
    price: 30.00, picture_id: 1, occasion: "BBQ, Steak", description: "Steak night wine"}]

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
