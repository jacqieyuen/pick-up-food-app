class CreateOrderProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :order_products do |t|
      t.string :customization, array: true, default: []
      t.string :special_request
      t.belongs_to :product, index: true
      t.belongs_to :order, index: true
      t.timestamps
    end
  end
end
