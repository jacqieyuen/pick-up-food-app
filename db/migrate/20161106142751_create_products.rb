class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :img_path
      t.integer :price
      t.integer :options
      t.belongs_to :category

      t.timestamps
    end
  end
end
