
    json.array! @all_orders do |order|
      json.merge! order.attributes
      json.order_products order.order_products
      json.products order.products

  end
