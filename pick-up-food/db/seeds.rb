# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'test@test.com', password: '00000000', name: 'tester1')

@categories = ["Pastries", "Salads", "Sandwiches", "Soup", "Snacks", "Beverages"]

@categories.each do |category|
  @category_name = category
  Category.create(name: @category_name)
end

@pastries = [
  {title: 'Croissant', description: 'Lorem ipsum dolor sit amet.', price: 10},
  {title: 'Pastries', description: 'Lorem ipsum dolor sit amet.', price: 13},
  {title: 'Cinammon Roll', description: 'Lorem ipsum dolor sit amet', price: 12},
  {title: 'Chocolate Croissant', description: 'Lorem ipsum dolor sit amet', price: 10},
  {title: 'Peach Danish', description: 'Lorem ipsum dolor sit amet', price: 10},
  {title: 'Blueberry Muffin', description: 'Lorem ipsum dolor sit amet', price: 10},
  {title: 'Fruit Tart', description: 'Lorem ipsum dolor sit amet', price: 10}
  ];

@pastries.each do |item|
  @item_name = item[:title]
  @item_description = item[:description]
  @item_price = item[:price]
  @pastry_category_id = 1
  Product.create(name: @item_name, description: @item_description, price: @item_price, category_id: @pastry_category_id)
end

@salads = [
  {title: 'Big Salad', description: 'Lorem ipsum dolor sit amet.', price: 25},
  {title: 'Small Salad', description: 'Lorem ipsum dolor sit amet.', price: 30}
  ];

@salads.each do |item|
  @item_name = item[:title]
  @item_description = item[:description]
  @item_price = item[:price]
  @salad_category_id = 2
  Product.create(name: @item_name, description: @item_description, price: @item_price, category_id: @salad_category_id)
end

@sandwiches = [
  {title: 'Salami and Brie', description: 'Lorem ipsum dolor sit amet', price: 28},
  {title: 'Parma Ham and Cheddar', description: 'Lorem ipsum dolor sit amet', price: 28},
  {title: 'Egg and Ham', description: 'Lorem ipsum dolor sit amet,', price: 28},
  {title: 'Avocado and Egg', description: 'Lorem ipsum dolor sit amet', price: 28},
  {title: 'Tuna and Parmasean', description: 'Lorem ipsum dolor sit amet', price: 28,},
  {title: 'Portobello, Tomato and Mozarella', description: 'Lorem ipsum dolor sit amet', price: 28}
  ];

@sandwiches.each do |item|
  @item_name = item[:title]
  @item_description = item[:description]
  @item_price = item[:price]
  @sandwich_category_id = 3
  Product.create(name: @item_name, description: @item_description, price: @item_price, category_id: @sandwich_category_id)
end

@soups = [
  {title: 'Pumpkin', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', price: 24},
  {title: 'Mushroom', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', price: 24},
  {title: 'Vegetable', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', price: 24},
  ];

@soups.each do |item|
  @item_name = item[:title]
  @item_description = item[:description]
  @item_price = item[:price]
  @soup_category_id = 4
  Product.create(name: @item_name, description: @item_description, price: @item_price, category_id: @soup_category_id)
end

@snacks = [
  {title: 'Fruit Cup', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Kettle Chips, BBQ', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Kettle Chips, Cheddar', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Apple', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Bananna', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Dark Chocolate', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Coffee Flavoured Chocolate', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Chilli Nut Trail', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Oat Bar', description: 'Lorem ipsum dolor sit amet', price: 13}
  ];

@snacks.each do |item|
  @item_name = item[:title]
  @item_description = item[:description]
  @item_price = item[:price]
  @snack_category_id = 5
  Product.create(name: @item_name, description: @item_description, price: @item_price, category_id: @snack_category_id)
end

@beverages = [
  {title: 'Cappucino', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Latte', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Flat White', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Espresso', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Americano', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Berry Smoothie', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Greenie Smoothie', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Orange Juice', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Grapefruit Juice', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Apple Juice', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Sparkling Water', description: 'Lorem ipsum dolor sit amet', price: 13},
  {title: 'Water', description: 'Lorem ipsum dolor sit amet', price: 13}
  ];

@beverages.each do |item|
  @item_name = item[:title]
  @item_description = item[:description]
  @item_price = item[:price]
  @beverage_category_id = 6
  Product.create(name: @item_name, description: @item_description, price: @item_price, category_id: @beverage_category_id)
end
