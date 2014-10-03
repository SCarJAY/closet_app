
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Ade's
user_aa = User.create(
  name: "adesuwau",
  email: "ade@ga.co",
  password: "ihaertga",
  city: "New York",
  state: "NY")

aa_item1 = Item.create(
  img_url: "http://assets.matchesfashion.com/products/WOGJ4D860002BKM_1_large.jpg",
  name: "Mosaic Print Dress",
  category: "one piece",
  dress_code: "night out",
  color: "multi",
  size: "M",
  brand: "Givenchy",
  purchased_from: "Bergdorf's")

aa_item2 = Item.create(
  img_url: "http://www.stylebop.com/grafic/360/640x806/214/214524/214524_01.jpg",
  name: "Leather Sweats",
  category: "bottom",
  dress_code: "night out",
  color: "black",
  size: "10",
  brand: "3.1 Phillip Lim",
  purchased_from: "Shopbop")

aa_item3 = Item.create(
  img_url: "http://resources.shopstyle.com/sim/a1/ac/a1ac09e0323a9eeb832efc16dcfcb4eb/h-m-draped-wrap-style-blouse-burgundy-ladies.jpg",
  name: "Plum Drapey Blouse",
  category: "top",
  dress_code: "work",
  color: "purple",
  size: "M",
  brand: "H&M",
  purchased_from: "H&M")

aa_item4 = Item.create(
  img_url: "http://www.shoplesnouvelles.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/a/rag-and-bone-white-talia-sweater.jpg",
  name: "White/Black V Neck Sweater",
  category: "top",
  dress_code: "casual",
  color: "white",
  size: "M",
  brand: "Rag & Bone",
  purchased_from: "Nordstrom's")

aa_item5 = Item.create(
  img_url: "http://4.bp.blogspot.com/-S29zGciW_ow/T8U8mQ-8ACI/AAAAAAAAAhM/JFCUXmxruYM/s1600/DSCN0186.jpg",
  name: "Funky shoes",
  category: "shoes",
  dress_code: "night out",
  color: "black",
  size: "10",
  brand: "xxx Campbell",
  purchased_from: "Shopbop")

aa_item1.user_id = user_aa.id
aa_item1.save
aa_item2.user_id = user_aa.id
aa_item2.save
aa_item3.user_id = user_aa.id
aa_item3.save
aa_item4.user_id = user_aa.id
aa_item4.save
aa_item5.user_id = user_aa.id
aa_item5.save

# Yinan's
user_ys = User.create(
  name: "yinansong",
  email: "yinan.e.song@gmail.com",
  password: "sesameopen",
  city: "New Haven",
  state: "CT")

ys_item1 = Item.create(
  img_url: "http://instagram.com/p/tnXdKpOIiY",
  name: "Manolo Blahnik Suede Heels",
  category: "shoes",
  dress_code: "night out",
  color: "brown",
  size: "8",
  brand: "Manolo Blahnik",
  purchased_from: "Macy's")

ys_item3 = Item.create(
  img_url: "http://instagram.com/p/tFMF9BgUau",
  name: "Silk Layered Dress",
  category: "one piece",
  dress_code: "night out",
  color: "black",
  size: "S",
  brand: "H&M",
  purchased_from: "H&M")

ys_item4 = Item.create(
  img_url: "http://instagram.com/p/gYFPtKoILR",
  name: "Knot Necklace",
  category: "accessory",
  dress_code: "night out",
  color: "silver",
  size: "one size",
  brand: "unknown",
  purchased_from: "MyNameNecklace.com")

ys_item1.user_id = user_ys.id
ys_item1.save
ys_item3.user_id = user_ys.id
ys_item3.save
ys_item4.user_id = user_ys.id
ys_item4.save

cx = User.create(
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

cx_item1.user_id = cx.id
cx_item2.user_id = cx.id
cx_item3.user_id = cx.id

cx_item1.save
cx_item2.save
cx_item3.save

