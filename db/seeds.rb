# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(
  name: "carrie",
  email: "carrie@ga.co",
  password: "lovesfood",
  city: "New York",
  state: "NY")

cx_item1 = Item.create(
  img_url: "http://instagram.com/p/p55_8EyNKw/",
  name: "pug shirt",
  category: "top",
  dress_code: "casual",
  color: "multi",
  size: "4")

cx_item2 = Item.create(
  img_url: "http://static.zara.net/photos//2014/I/0/1/p/5315/152/800/2/w/560/5315152800_2_1_1.jpg?timestamp=1411573519307",
  name: "lace skirt",
  category: "bottom",
  color: "black",
  dress_code: "casual",
  size: "4",
  brand: "zara",
  purchased_from: "zara")

cx_item3 = Item.create(
  img_url: "http://static.zara.net/photos//2014/I/0/1/p/5039/150/401/2/w/1920/5039150401_2_1_1.jpg?timestamp=1411491305060",
  name: "mermaid dress",
  category: "one_piece",
  dress_code: "night out",
  color: "black",
  size: "4",
  brand: "zara",
  purchased_from: "zara")


cx_item1.user_id = u1.id
cx_item2.user_id = u1.id
cx_item3.user_id = u1.id

cx_item1.save
cx_item2.save
cx_item3.save
