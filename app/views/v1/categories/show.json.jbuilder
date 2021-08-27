json.array! @category do |category|
  json.name category.name
  json.products category.products.count
  json.children do
    json.array! category.children do |child_category|
      json.name child_category.name
      json.products child_category.products.count
      json.children []
    end
  end
end
