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
  {title: 'Portobello, Tomato and Mozarella', description: 'Lorem ipsum dolor sit amet', price: 28},
  {title: 'Pumpkin', description: 'Lorem ipsum dolor sit amet', price: 24}
  ];

@sandwiches.each do |item|
  @item_name = item[:title]
  @item_description = item[:description]
  @item_price = item[:price]
  @sandwich_category_id = 3
  Product.create(name: @item_name, description: @item_description, price: @item_price, category_id: @sandwich_category_id)
end