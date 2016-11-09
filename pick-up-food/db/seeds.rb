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
  {title: 'Croissant', description: 'Lorem ipsum dolor sit amet.', price: 10, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_hypnotise/simplylife_open_kitchen_to_hypnotise_r19_c1.jpg'},
  {title: 'Bread', description: 'Lorem ipsum dolor sit amet.', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_hypnotise/simplylife_open_kitchen_to_hypnotise_r19_c1.jpg'},
  {title: 'Cinammon Roll', description: 'Lorem ipsum dolor sit amet', price: 12, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_hypnotise/simplylife_open_kitchen_to_hypnotise_r19_c1.jpg'},
  {title: 'Chocolate Croissant', description: 'Lorem ipsum dolor sit amet', price: 10, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_hypnotise/simplylife_open_kitchen_to_hypnotise_r19_c1.jpg'},
  {title: 'Peach Danish', description: 'Lorem ipsum dolor sit amet', price: 10, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_hypnotise/simplylife_open_kitchen_to_hypnotise_r19_c1.jpg'},
  {title: 'Blueberry Muffin', description: 'Lorem ipsum dolor sit amet', price: 10, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_hypnotise/simplylife_open_kitchen_to_hypnotise_r19_c1.jpg'},
  {title: 'Fruit Tart', description: 'Lorem ipsum dolor sit amet', price: 10, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_hypnotise/simplylife_open_kitchen_to_hypnotise_r19_c1.jpg'}
  ];

@pastries.each do |item|
  @item_name = item[:title]
  @item_description = item[:description]
  @item_price = item[:price]
  @item_img_path = item[:img_path]
  @pastry_category_id = 1
  Product.create(name: @item_name, description: @item_description, price: @item_price, category_id: @pastry_category_id, img_path: @item_img_path)
end

@salads = [
  {title: 'Big Salad', description: 'Lorem ipsum dolor sit amet.', price: 25, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_comfort/simplylife_open_kitchen_to_comfort_r7_c2.jpg'},
  {title: 'Small Salad', description: 'Lorem ipsum dolor sit amet.', price: 30, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_comfort/simplylife_open_kitchen_to_comfort_r7_c2.jpg'}
  ];

@salads.each do |item|
  @item_name = item[:title]
  @item_description = item[:description]
  @item_price = item[:price]
  @item_img_path = item[:img_path]
  @salad_category_id = 2
  Product.create(name: @item_name, description: @item_description, price: @item_price, category_id: @salad_category_id, img_path: @item_img_path)
end

@sandwiches = [
  {title: 'Salami and Brie', description: 'Lorem ipsum dolor sit amet', price: 28, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_comfort/simplylife_open_kitchen_to_comfort_r15_c2.jpg'},
  {title: 'Parma Ham and Cheddar', description: 'Lorem ipsum dolor sit amet', price: 28, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_comfort/simplylife_open_kitchen_to_comfort_r15_c2.jpg'},
  {title: 'Egg and Ham', description: 'Lorem ipsum dolor sit amet,', price: 28, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_comfort/simplylife_open_kitchen_to_comfort_r15_c2.jpg'},
  {title: 'Avocado and Egg', description: 'Lorem ipsum dolor sit amet', price: 28, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_comfort/simplylife_open_kitchen_to_comfort_r15_c2.jpg'},
  {title: 'Tuna and Parmasean', description: 'Lorem ipsum dolor sit amet', price: 28, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_comfort/simplylife_open_kitchen_to_comfort_r15_c2.jpg'},
  {title: 'Portobello, Tomato and Mozarella', description: 'Lorem ipsum dolor sit amet', price: 28, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_comfort/simplylife_open_kitchen_to_comfort_r15_c2.jpg'}
  ];

@sandwiches.each do |item|
  @item_name = item[:title]
  @item_description = item[:description]
  @item_price = item[:price]
  @item_img_path = item[:img_path]
  @sandwich_category_id = 3
  Product.create(name: @item_name, description: @item_description, price: @item_price, category_id: @sandwich_category_id, img_path: @item_img_path)
end

@soups = [
  {title: 'Pumpkin', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', price: 24, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_comfort/simplylife_open_kitchen_to_comfort_r22_c5.jpg'},
  {title: 'Mushroom', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', price: 24, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_comfort/simplylife_open_kitchen_to_comfort_r22_c5.jpg'},
  {title: 'Vegetable', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', price: 24, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_comfort/simplylife_open_kitchen_to_comfort_r22_c5.jpg'},
  ];

@soups.each do |item|
  @item_name = item[:title]
  @item_description = item[:description]
  @item_price = item[:price]
  @item_img_path = item[:img_path]
  @soup_category_id = 4
  Product.create(name: @item_name, description: @item_description, price: @item_price, category_id: @soup_category_id, img_path: @item_img_path)
end

@snacks = [
  {title: 'Fruit Cup', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r20_c2.jpg'},
  {title: 'Kettle Chips, BBQ', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r20_c2.jpg'},
  {title: 'Kettle Chips, Cheddar', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r20_c2.jpg'},
  {title: 'Apple', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r20_c2.jpg'},
  {title: 'Bananna', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r20_c2.jpg'},
  {title: 'Dark Chocolate', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r20_c2.jpg'},
  {title: 'Coffee Flavoured Chocolate', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r20_c2.jpg'},
  {title: 'Chilli Nut Trail', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r20_c2.jpg'},
  {title: 'Oat Bar', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r20_c2.jpg'}
  ];

@snacks.each do |item|
  @item_name = item[:title]
  @item_description = item[:description]
  @item_price = item[:price]
  @item_img_path = item[:img_path]
  @snack_category_id = 5
  Product.create(name: @item_name, description: @item_description, price: @item_price, category_id: @snack_category_id, img_path: @item_img_path)
end

@beverages = [
  {title: 'Cappucino', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r8_c5.jpg'},
  {title: 'Latte', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r8_c5.jpg'},
  {title: 'Flat White', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r8_c5.jpg'},
  {title: 'Espresso', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r8_c5.jpg'},
  {title: 'Americano', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r8_c5.jpg'},
  {title: 'Berry Smoothie', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r8_c5.jpg'},
  {title: 'Greenie Smoothie', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r8_c5.jpg'},
  {title: 'Orange Juice', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r8_c5.jpg'},
  {title: 'Grapefruit Juice', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r8_c5.jpg'},
  {title: 'Apple Juice', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r8_c5.jpg'},
  {title: 'Sparkling Water', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r8_c5.jpg'},
  {title: 'Water', description: 'Lorem ipsum dolor sit amet', price: 13, img_path: 'http://www.simplylife.com.hk/img/kitchen/to_wake/Simplylife_open_kitchen_to_wake_r8_c5.jpg'}
  ];

@beverages.each do |item|
  @item_name = item[:title]
  @item_description = item[:description]
  @item_price = item[:price]
  @item_img_path = item[:img_path]
  @beverage_category_id = 6
  Product.create(name: @item_name, description: @item_description, price: @item_price, category_id: @beverage_category_id, img_path: @item_img_path)
end
