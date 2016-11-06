class CreatePickupCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :pickup_codes do |t|
      t.integer :code
      t.timestamps
    end
  end
end
