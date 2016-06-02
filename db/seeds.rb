Cocktail.destroy_all
Ingredient.destroy_all


6.times do
  name = Faker::Hipster.words(2).join(" ")
  Cocktail.create(name: name)
end

Ingredient.create(name: "Vodka")
Ingredient.create(name: "Rum")
Ingredient.create(name: "Gin")
Ingredient.create(name: "Sparkling water")
Ingredient.create(name: "Tonic")
Ingredient.create(name: "Red Bull")
Ingredient.create(name: "Mint")
Ingredient.create(name: "Lemon")
Ingredient.create(name: "Basil")
