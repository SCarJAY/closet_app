
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
  state: "NY",
  role: "client")

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
  state: "CT",
  role: "client")

ys_item1 = Item.create(
  img_url: "https://img0.etsystatic.com/032/1/8206026/il_570xN.571915094_gva4.jpg",
  name: "Manolo Blahnik Suede Heels",
  category: "shoes",
  dress_code: "night out",
  color: "brown",
  size: "8",
  brand: "Manolo Blahnik",
  purchased_from: "Macy's")

ys_item2 = Item.create(
  img_url: "http://s7d4.scene7.com/is/image/BonTon/479723?$ibm_large$",
  name: "Black Square on Beige",
  category: "one piece",
  dress_code: "work",
  color: "black",
  size: "8",
  brand: "Calvin Klein",
  purchased_from: "Calvin Klein")

ys_item3 = Item.create(
  img_url: "http://www.uuclothing.com/wp-content/uploads/2012/08/16/women-dress-20120816-66.jpg",
  name: "Silk Layered Dress",
  category: "one piece",
  dress_code: "night out",
  color: "black",
  size: "S",
  brand: "H&M",
  purchased_from: "H&M")

ys_item4 = Item.create(
  img_url: "http://m.benbridge.com/shop/images/T/11053980.jpg",
  name: "Knot Necklace",
  category: "accessory",
  dress_code: "night out",
  color: "silver",
  size: "one size",
  brand: "unknown",
  purchased_from: "MyNameNecklace.com")

ys_item5 = Item.create(
  img_url: "http://static.heels.com/images/shoes/outside_view/large/ZMAN883_OUT_LG.jpg",
  name: "Littel Back Checkered Heels",
  category: "shoes",
  dress_code: "work",
  color: "black",
  size: "8",
  brand: "unknown",
  purchased_from: "Nordstrom's")

ys_item1.user_id = user_ys.id
ys_item1.save
ys_item2.user_id = user_ys.id
ys_item2.save
ys_item3.user_id = user_ys.id
ys_item3.save
ys_item4.user_id = user_ys.id
ys_item4.save
ys_item5.user_id = user_ys.id
ys_item5.save

cx = User.create(
name: "carrie",
email: "carrie@ga.co",
password: "lovesfood",
city: "New York",
state: "NY",
role: "admin")

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

sm = User.create(
name: "Sarah",
email: "p.sweetpotato@gmail.com",
password: "potatoes4eva",
city: "Brooklyn",
state: "NY")

sm_item1 = Item.create(
img_url: "http://www.allensboots.com/photos/boots/frye/womens-cognac-courtney-71065cog.50770.1.2505x1356.jpg",
name: "Courtney Boots",
category: "shoes",
dress_code: "dress",
color: "cognac",
size: "5.5",
brand: "Frye",
purchased_from: "Frye")

sm_item2 = Item.create(
img_url: "http://a2.zassets.com/images/z/1/8/6/2/3/5/1862359-p-MULTIVIEW.jpg",
name: "Carson Flats",
category: "shoes",
dress_code: "casual",
color: "cognac",
size: "5.5",
brand: "Frye",
purchased_from: "Frye")

sm_item3 = Item.create(
img_url: "http://www.carsonballet.com/carsonballet/defaultcolors/forest-antique-soft-full-grain/frye-carson-ballet-forest-antique-soft-full-grain.jpg",
name: "Carson Flats",
category: "shoes",
dress_code: "casual",
color: "black",
size: "5.5",
brand: "Frye",
purchased_from: "Frye")

sm_item4 = Item.create(
img_url: "http://cdna.lystit.com/photos/36d9-2014/07/29/madewell-black-skinny-skinny-sateen-jeans-product-1-22114504-0-227218472-normal_large_flex.jpeg",
name: "Sateen Jeans",
category: "bottom",
dress_code: "casual",
color: "black",
size: "27",
brand: "Madewell",
purchased_from: "Madewell")

sm_item5 = Item.create(
img_url: "https://s7d9.scene7.com/is/image/madewell/B1407_KU2477_m?$pdp_fs418_3x_zoom$",
name: "Sweatshirt Dress",
category: "one piece",
dress_code: "casual",
color: "navy",
size: "XXS",
brand: "Madewell",
purchased_from: "Madewell")

sm_item6 = Item.create(
img_url: "https://s7d9.scene7.com/is/image/madewell/A8495_BL7205_m?$pdp_fs418$",
name: "Keynote Dress",
category: "one piece",
dress_code: "casual",
color: "teal",
size: "XXS",
brand: "Madewell",
purchased_from: "Madewell")

sm_item7 = Item.create(
img_url: "http://oldnavy.gap.com/webcontent/0008/068/306/cn8068306.jpg",
name: "Sweater",
category: "top",
dress_code: "casual",
color: "teal",
size: "XXS",
brand: "Madewell",
purchased_from: "Madewell")

sm_item8 = Item.create(
img_url: "http://www.kevinandamanda.com/whatsnew/wp-content/uploads/2013/04/american-eagle-super-stretch-skinny-jeans.jpg",
name: "Skinny Jeans",
category: "bottom",
dress_code: "casual",
color: "dark blue",
size: "4",
brand: "American Eagle",
purchased_from: "American Eagle")

sm_item9 = Item.create(
img_url: "http://oldnavy.gap.com/webcontent/0007/849/348/cn7849348.jpg",
name: "Dress Pants",
category: "bottom",
dress_code: "dress",
color: "royal blue",
size: "4",
brand: "Old Navy",
purchased_from: "Old Navy")

sm_item10 = Item.create(
img_url: "http://resources.shopstyle.com/sim/ed/c9/edc9891bb2b0c3d90b3918fbaec0209b/loft-mixed-stitch-sweater.jpg",
name: "Mixed Stitch Sweater",
category: "top",
dress_code: "casual",
color: "olive",
size: "XS",
brand: "Loft",
purchased_from: "Loft")

sm_item11 = Item.create(
img_url: "http://oldnavy.gap.com/webcontent/0007/849/348/cn7849348.jpg",
name: "Dress Pants",
category: "bottom",
dress_code: "dress",
color: "royal blue",
size: "4",
brand: "Old Navy",
purchased_from: "Old Navy")

sm_item12 = Item.create(
img_url: "https://catbirdnyc.com/shop/images/P/ctmhRG.jpg",
name: "Necklace",
category: "accessory",
dress_code: "dress",
color: "rose gold",
size: "one size",
brand: "Catbird",
purchased_from: "Catbird"
)

sm_item13 = Item.create(
img_url: "https://catbirdnyc.com/shop/images/T/bars_earrings.jpg",
name: "Bar Earrings",
category: "accessory",
dress_code: "dress",
color: "rose gold",
size: "one size",
brand: "Catbird",
purchased_from: "Catbird"
)

sm_item14 = Item.create(
img_url: "http://thingd-media-ec3.thefancy.com/default/398141766869455723_a044ef62af06.jpg",
name: "Transport Tote",
category: "accessory",
dress_code: "casual",
color: "cognac",
size: "one size",
brand: "Madewell",
purchased_from: "Madewell"
)

sm_item15 = Item.create(
img_url: "http://images.urbanoutfitters.com/is/image/UrbanOutfitters/32317984_040_d?$xlarge$&defaultImage=",
name: "Purse",
category: "accessory",
dress_code: "casual",
color: "black",
size: "one size",
brand: "Urban Outfitters",
purchased_from: "Urban Outfitters"
)

sm_item1.user_id = sm.id
sm_item2.user_id = sm.id
sm_item3.user_id = sm.id
sm_item4.user_id = sm.id
sm_item5.user_id = sm.id
sm_item6.user_id = sm.id
sm_item7.user_id = sm.id
sm_item8.user_id = sm.id
sm_item9.user_id = sm.id
sm_item10.user_id = sm.id
sm_item11.user_id = sm.id
sm_item12.user_id = sm.id
sm_item13.user_id = sm.id
sm_item14.user_id = sm.id
sm_item15.user_id = sm.id

sm_item1.save
sm_item2.save
sm_item3.save
sm_item4.save
sm_item5.save
sm_item6.save
sm_item7.save
sm_item8.save
sm_item9.save
sm_item10.save
sm_item11.save
sm_item12.save
sm_item13.save
sm_item14.save
sm_item15.save
