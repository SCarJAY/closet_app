# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.create(name: "adesuwau", email: "ade@ga.co", password: "ihaertga", city: "New York", state: "NY")
i1 = Item.create(img_url: "http://assets.matchesfashion.com/products/WOGJ4D860002BKM_1_large.jpg", name: "Mosaic Print Dress", category: "dress", dress_code: "night out", color: "multi", size: "M", brand: "Givenchy", purchased_from: "Bergdorf's")
i2 = Item.create(img_url: "http://www.stylebop.com/grafic/360/640x806/214/214524/214524_01.jpg", name: "Leather Sweats", category: "pants", dress_code: "night out", color: "black", size: "10", brand: "3.1 Phillip Lim", purchased_from: "Shopbop")
i3 = Item.create(img_url: "http://resources.shopstyle.com/sim/a1/ac/a1ac09e0323a9eeb832efc16dcfcb4eb/h-m-draped-wrap-style-blouse-burgundy-ladies.jpg", name: "Plum Drapey Blouse", category: "top", dress_code: "work", color: "purple", size: "M", brand: "H&M", purchased_from: "H&M")
i4 = Item.create(img_url: "http://www.shoplesnouvelles.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/a/rag-and-bone-white-talia-sweater.jpg", name: "White/Black V Neck Sweater", category: "top", dress_code: "casual", color: "white", brand: "Rag & Bone", purchased_from: "Nordstrom's")


u2 = User.create(name: "jessfranko", email: "jess@ga.co", password: garocks, city: "New Jersey", state: "NJ")
i5 = Item.create(img_url: "https://item2.tradesy.com/r/4d05e90b08b29183be526f3c77dcc21030ef12c95bfa76d9ab7149d6cbfdc65f/355/355/dresses/bcbg/2-xs/bcbg-rompers-jumpsuits-1207826.jpg", name: "BCBG onsie", category: "one-piece", dress_code: "work" color: "black", size: "M", brand: "BCBG", purchased_from: "BCBG")
i6 = Item.create(img_url: "https://item5.tradesy.com/r/f9cfd9fa09c0990255ebbf605725b66e/355/355/dresses/all-saints/6-s/all-saints-flirty-feminine-maxi-dress-brown-and-white-floral-864174.jpg", name: "FLoral Dress", category: "one-piece", dress_code: "casual" color: "brown", size: "M", brand: "", purchased_from: "tradesy")
i7 = Item.create(img_url: "http://bananarepublic.gap.com/assets/common/clear.gif", name: "Silver Necklace", category: "accessory", dress_code: "other" color: "silver", size: "one-size", brand: "Banana Republic", purchased_from: "Banana")
i8 = Item.create(img_url: "http://www1.assets-gap.com/webcontent/0008/685/673/cn8685673.jpg", name: "B&W Pencil Skirt", category: "skirt", dress_code: "work" color: "multi", size: "M", brand: "Banana Republic", purchased_from: "Banana")
