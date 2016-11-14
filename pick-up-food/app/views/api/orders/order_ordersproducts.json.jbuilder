json.user @current_user
json.order @orderproducts[0].order
json.order_products do
  json.array! @orderproducts do |order_product|
    json.merge! order_product.attributes
    json.product order_product.product

  end
end
