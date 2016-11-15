


    json.array! @orders do |order|
      json.order order
      json.order_products order.order_products do |order_product|
        json.merge! order_product.attributes
      end
      json.products order.products do |product|
        json.product product.attributes
      end

  end
