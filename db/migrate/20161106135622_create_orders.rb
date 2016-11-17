class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.boolean :preparing
      t.boolean :ready
      t.boolean :picked_up
      t.integer :pickup_code
      t.datetime :pick_up_time
      t.belongs_to :user

      t.timestamps
    end
  end
end
