class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.boolean :preparing
      t.boolean :ready
      t.boolean :picked_up
      t.date :pick_up_time

      t.timestamps
    end
  end
end
