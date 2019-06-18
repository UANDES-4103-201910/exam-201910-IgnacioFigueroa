# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "Juan", last_name: "Perez", email: "juanperez@gmail.com", password:"123123")
brands = ["brand1", "brand2", "brand3", "brand4"]
for i in 1..8
  Product.create(brand: brands[Random.rand(0..3)], model: "model#{i}", variant: "variant#{i}", price: i, long_description: "Long description #{i}",
                 short_description: "Short description #{i}", product_type:"Handset")
end

for i in 9..17
  Product.create(brand: brands[Random.rand(0..3)], model: "model#{i}", variant: "variant#{i}", price: i, long_description: "Long description #{i}",
                 short_description: "Short description #{i}", product_type:"Subscription")
end

for i in 18..26
  Product.create(brand: brands[Random.rand(0..3)], model: "model#{i}", variant: "variant#{i}", price: i, long_description: "Long description #{i}",
                 short_description: "Short description #{i}", product_type:"Prepay option")
end



