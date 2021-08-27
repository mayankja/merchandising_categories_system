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
