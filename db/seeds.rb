# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

parent = nil

['Pets', 'Pet Food', 'Dog Food', 'Organic', 'Bulk Dry Food'].each do |category|
  parent = Category.create(name: category, parent: parent)
end

10.times do |i|
  Product.create(name: Faker::Commerce.product_name)
end

Product.all.each do |prod|
  Category.all.each do |categ|
    CategorizedProduct.create(product: prod, category: categ)
  end
end
