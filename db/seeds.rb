require "json"
require "open-uri"

# puts "Creating more recipes!"

# Recipe.create!(name: "Margarita Pizza", description: "A classic Italian dish known for its simplicity and fresh ingredients. It features a thin, crisp crust topped with a vibrant tomato sauce, creamy mozzarella cheese, and fresh basil leaves.", image_url: "https://cdn.shopify.com/s/files/1/0274/9503/9079/files/20220211142754-margherita-9920_5a73220e-4a1a-4d33-b38f-26e98e3cd986.jpg?v=1723650067", rating: 10)
# Recipe.create!(name: "Fish & Chips", description: "A beloved British dish consisting of crispy, golden-battered fish paired with thick-cut fries.", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Fish_and_chips_blackpool.jpg/1200px-Fish_and_chips_blackpool.jpg", rating: 6.8)
# # Recipe.create!(name: "", description: "", image_url: "", rating: )

# puts "You have added #{Recipe.count} recipes!"
def recipe_builder(id)
  url = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=#{id}"
  recipe_serialized = URI.open(url).read
  recipe_data = JSON.parse(recipe_serialized)["meals"]&.first

  Recipe.create(name: recipe_data["strMeal"], description: recipe_data["strInstructions"], image_url: recipe_data["strMealThumb"], rating: rand(1..10))
end

categories = ["Breakfast", "Pasta", "Seafood", "Dessert"]

categories.each do |category|
 url = "https://www.themealdb.com/api/json/v1/1/filter.php?c=#{category}"
 recipes_serialized = URI.parse(url).read
 recipes = JSON.parse(recipes_serialized)
 recipes["meals"].each do |recipe|
  id_meal = recipe["idMeal"]
  recipe_builder(id_meal)
 end
end
