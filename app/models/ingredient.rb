class Ingredient < ApplicationRecord

  has_many :product_ingredients
  has_many :products, through: :product_ingredients

  validates :name, uniqueness: true, presence: true

end
