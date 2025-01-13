puts "Creating recipes!"

Recipe.create!(name: "Lasagne", description: "A delicious homebaked Italian Classic", image_url: "https://santokuknives.co.uk/cdn/shop/articles/Lasagne_300-557617.jpg?v=1724841861&width=1920", rating: 8.6)
Recipe.create!(name: "Chicken Gyros", description: "A quick and simple", image_url: "https://www.kitchensanctuary.com/wp-content/uploads/2021/07/Chicken-Gyros-Square-FS-58.jpg", rating: 9.5 )
Recipe.create!(name: "Pesto Pasta", description: "A simple yet flavorful dish featuring al dente pasta tossed in a vibrant basil pesto sauce.", image_url: "https://www.mrsjoneskitchen.com/wp-content/uploads/2022/02/Tuna-pesto-pasta.jpg", rating: 7.8)
Recipe.create!(name: "Thai Red Curry", description: "A rich and aromatic dish that combines tender meat or tofu with a creamy coconut milk ba", image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/thai-red-curry-34c1e6d.jpg", rating: 7.4)

puts "You have added #{Recipe.count} recipes!"
