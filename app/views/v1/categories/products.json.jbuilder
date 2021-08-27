json.array! @category do |category|
  json.name category.name

  json.products do
    json.array! category.products do |product|
      json.name product.name
      json.created_at product.created_at
    end
  end

  json.children do
    json.array! category.children do |child_category|
      json.name child_category.name
      json.products child_category.products.count
      json.children []
    end
  end
end