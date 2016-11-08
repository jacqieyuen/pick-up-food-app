class CreateCustomization < ActiveRecord::Migration[5.0]
  def change
    create_table :Customizations do |t|
      t.belongs_to :order_product
      t.belongs_to :ingredient

      t.timestamps
    end
  end
end
