

    # This file should contain all the record creation needed to seed the database with its default values.
    # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
    #
    # Examples:
    #
    #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
    #   Mayor.create(name: 'Emanuel', city: cities.first)

    # Ade's
user_aa = User.create(
  name: "adesuwau",
  email: "ade@ga.co",
  password: "ihaertga",
  city: "New York",
  state: "NY",
  role: "admin")

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

aa_item6 = Item.create(
  img_url: "http://cdna.lystit.com/photos/2012/12/27/hm-leopard-coat-product-3-5900714-401974544_large_flex.jpeg",
  name: "Patterened Coat",
  category: "top",
  dress_code: "night out",
  color: "leopard",
  size: "10",
  brand: "H&M",
  purchased_from: "H&M")

aa_item7 = Item.create(
  img_url: "http://imgur.com/Gbjtwte",
  name: "WDI hoodie",
  category: "top",
  dress_code: "work",
  color: "grey",
  size: "M",
  brand: "General Assembly",
  purchased_from: "Guildenstern")

aa_item8 = Item.create(
  img_url: "https://s7.jcrew.com/is/image/jcrew/B1089_PA3029_m?$pdp_tn75$",
  name: "Flannel Shirt",
  category: "top",
  dress_code: "work",
  color: "b&w buffalo check",
  size: "M",
  brand: "jcrew",
  purchased_from: "J crew")

aa_item9 = Item.create(
  img_url: "https://s7.jcrew.com/is/image/jcrew/B6716_EC7253_d1?$pdp_tn75$",
  name: "gold pearl bracelet",
  category: "accessory",
  dress_code: "night out",
  color: "gold",
  size: "one size",
  brand: "jcrew",
  purchased_from: "J crew")

aa_item10 = Item.create(
  img_url: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTz3YoZW3P_5hmqT-dkhYjXcHgs72rsfwXLK7xVOerP4m2-Ezh1cjnjx0UCqKPa7jax2CxQDFFN&usqp=CAE",
  name: "ankle jeans",
  category: "bottom",
  dress_code: "casual",
  color: "blue",
  size: "10",
  brand: "j brand",
  purchased_from: "Nordstrom")

aa_item11 = Item.create(
  img_url: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcR0eh2OcRoBPvBdS3-DAQ2w9qVkH0X8qm2j-Eo5Yqmugf-RLyoL3WmAPbarhgWO6b0qceWmZbp9&usqp=CAE",
  name: "black leggings",
  category: "bottom",
  dress_code: "casual",
  color: "black",
  size: "10",
  brand: "Express",
  purchased_from: "Express")

aa_item12 = Item.create(
  img_url: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcR0eh2OcRoBPvBdS3-DAQ2w9qVkH0X8qm2j-Eo5Yqmugf-RLyoL3WmAPbarhgWO6b0qceWmZbp9&usqp=CAE",
  name: "silk print top",
  category: "top",
  dress_code: "casual",
  color: "white floral print",
  size: "M",
  brand: "Keira",
  purchased_from: "Bloomingdales")

 aa_item13 = Item.create(
  img_url: "http://cdn.cichic.com/media/catalog/product/cache/1/image/5e06319eda06f020e43594a9c230972d/1/1/11175775277-1/sapphire-blue-epaulet-buttons-v-neck-pockets-chiffon-blouse.jpg",
  name: "silk blouse",
  category: "top",
  dress_code: "work",
  color: "ultramarine",
  size: "M",
  brand: "Ralph Lauren",
  purchased_from: "Bloomingdales")

 aa_item1.user_id = user_aa.id
 aa_item2.user_id = user_aa.id
 aa_item3.user_id = user_aa.id
 aa_item4.user_id = user_aa.id
 aa_item5.user_id = user_aa.id
 aa_item6.user_id = user_aa.id
 aa_item7.user_id = user_aa.id
 aa_item8.user_id = user_aa.id
 aa_item9.user_id = user_aa.id
 aa_item10.user_id = user_aa.id
 aa_item11.user_id = user_aa.id
 aa_item12.user_id = user_aa.id
 aa_item13.user_id = user_aa.id
 aa_item1.save
 aa_item2.save
 aa_item3.save
 aa_item4.save
 aa_item5.save
 aa_item6.save
 aa_item7.save
 aa_item8.save
 aa_item9.save
 aa_item10.save
 aa_item11.save
 aa_item12.save
 aa_item13.save

    # Yinan's
user_ys = User.create(
  name: "yinansong",
  email: "yinan.e.song@gmail.com",
  password: "sesameopen",
  city: "New Haven",
  state: "CT",
  role: "client")


ys_item1 = Item.create(
  img_url: "http://instagram.com/p/tnXdKpOIiY",
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

ys_item5 = Item.create(
  img_url: "http://static.heels.com/images/shoes/outside_view/large/ZMAN883_OUT_LG.jpg",
  name: "Littel Back Checkered Heels",
  category: "shoes",
  dress_code: "work",
  color: "black",
  size: "8",
  brand: "unknown",
  purchased_from: "Nordstrom's")

ys_item6 = Item.create(
  img_url: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSILDT_GJrBq9JW7dGGxZ0r-24LCZDJPCsi4IV9cyIZgaQD9QKYJSww8bIgUDw9boSCt1JT57h9&usqp=CAE",
  category: "bottom",
  dress_code: "casual",
  color: "dark blue",
  size: "2",
  brand: "H&M",
  purchased_from: "H&M")

ys_item7 = Item.create(
  img_url: "http://imgur.com/Gbjtwte",
  name: "WDI hoodie",
  category: "top",
  dress_code: "work",
  color: "grey",
  size: "M",
  brand: "General Assembly",
  purchased_from: "Guildenstern")

ys_item8 = Item.create(
  img_url: "https://s7.jcrew.com/is/image/jcrew/B1089_PA3029_m?$pdp_tn75$",
  name: "Flannel Shirt",
  category: "top",
  dress_code: "work",
  color: "b&w buffalo check",
  size: "M",
  brand: "jcrew",
  purchased_from: "J crew")

ys_item9 = Item.create(
  img_url: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTz3YoZW3P_5hmqT-dkhYjXcHgs72rsfwXLK7xVOerP4m2-Ezh1cjnjx0UCqKPa7jax2CxQDFFN&usqp=CAE",
  name: "ankle jeans",
  category: "bottom",
  dress_code: "casual",
  color: "blue",
  size: "2",
  brand: "seven",
  purchased_from: "Nordstrom")

ys_item10 = Item.create(
  img_url: "http://image.s5a.com/is/image/saks/0442613332336_247x329.jpgAE",
  name: "tie wais wool shift",
  category: "one piece",
  dress_code: "casual",
  color: "beige",
  size: "2",
  brand: "A detacher",
  purchased_from: "Saks")

ys_item11 = Item.create(
  img_url: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTz3YoZW3P_5hmqT-dkhYjXcHgs72rsfwXLK7xVOerP4m2-Ezh1cjnjx0UCqKPa7jax2CxQDFFN&usqp=CAE",
  name: "ankle jeans",
  category: "bottom",
  dress_code: "casual",
  color: "blue",
  size: "2",
  brand: "seven",
  purchased_from: "Nordstrom")

ys_item12 = Item.create(
  img_url: "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=11576786",
  name: "Aqua top",
  category: "top",
  dress_code: "night out",
  color: "black floral print",
  size: "S",
  brand: "Aqua",
  purchased_from: "Bloomingdales")

  ys_item1.user_id = user_ys.id
  ys_item2.user_id = user_ys.id
  ys_item3.user_id = user_ys.id
  ys_item4.user_id = user_ys.id
  ys_item5.user_id = user_ys.id
  ys_item6.user_id = user_ys.id
  ys_item7.user_id = user_ys.id
  ys_item8.user_id = user_ys.id
  ys_item9.user_id = user_ys.id
  ys_item10.user_id = user_ys.id
  ys_item11.user_id = user_ys.id
  ys_item12.user_id = user_ys.id

  ys_item1.save
  ys_item2.save
  ys_item3.save
  ys_item4.save
  ys_item5.save
  ys_item6.save
  ys_item7.save
  ys_item8.save
  ys_item9.save
  ys_item10.save
  ys_item11.save
  ys_item12.save


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
  category: "one piece",
  dress_code: "night out",
  color: "black",
  size: "4",
  brand: "zara",
  purchased_from: "zara")

cx_item4 = Item.create(
  img_url: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSIYtIwOxytlfCfyHJ-UDLolo4IF1jUnCg8YecBSJvfvjcMtMy8&usqp=CAE",
  name: "ruffled camisole",
  category: "top",
  dress_code: "night out",
  color: "powder beige",
  size: "4",
  brand: "H&M",
  purchased_from: "H&M")

cx_item5 = Item.create(
  img_url: "http://imgur.com/Gbjtwte",
  name: "WDI hoodie",
  category: "top",
  dress_code: "work",
  color: "grey",
  size: "M",
  brand: "General Assembly",
  purchased_from: "Guildenstern")

cx_item6 = Item.create(
  img_url: "https://s7.jcrew.com/is/image/jcrew/B1089_PA3029_m?$pdp_tn75$",
  name: "Flannel Shirt",
  category: "top",
  dress_code: "work",
  color: "b&w buffalo check",
  size: "M",
  brand: "jcrew",
  purchased_from: "J crew")

cx_item7 = Item.create(
  img_url: "https://s7.jcrew.com/is/image/jcrew/B0703_GR6919_m?$pdp_tn75$",
  name: "wool capri pants",
  category: "bottom",
  dress_code: "work",
  color: "dark grey",
  size: "S",
  brand: "jcrew",
  purchased_from: "J crew")

cx_item8 = Item.create(
  img_url: "http://images.bloomingdales.com/is/image/BLM/products/2/optimized/8558752_fpx.tif?wid=356&qlt=90,0&layer=comp&op_sharpen=0&resMode=sharp2&op_usm=0.7,1.0,0.5,0&fmt=jpeg",
  name: "flat booties",
  category: "shoes",
  dress_code: "casual",
  color: "tan",
  size: "7",
  brand: "Lucky",
  purchased_from: "Bloomingdales")

cx_item9 = Item.create(
  img_url: "http://images.bloomingdales.com/is/image/BLM/products/1/optimized/8486261_fpx.tif?wid=356&qlt=90,0&layer=comp&op_sharpen=0&resMode=sharp2&op_usm=0.7,1.0,0.5,0&fmt=jpeg",
  name: "pink flats",
  category: "shoes",
  dress_code: "work",
  color: "pink",
  size: "7",
  brand: "kate spade",
  purchased_from: "Bloomingdales")

cx_item10 = Item.create(
  img_url: "http://cdnc.lystit.com/photos/2013/10/12/old-navy-sea-salt-honeycombknit-sweaters-product-1-14025526-982911473_large_flex.jpeg",
  name: "white sweater",
  category: "top",
  dress_code: "casual",
  color: "white",
  size: "4",
  brand: "uniqlo",
  purchased_from: "Uniqlo")

cx_item11 = Item.create(
  img_url: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTz3YoZW3P_5hmqT-dkhYjXcHgs72rsfwXLK7xVOerP4m2-Ezh1cjnjx0UCqKPa7jax2CxQDFFN&usqp=CAE",
  name: "ankle jeans",
  category: "bottom",
  dress_code: "casual",
  color: "blue",
  size: "2",
  brand: "jcrew",
  purchased_from: "J crew")

cx_item12 = Item.create(
  img_url: "http://image.s5a.com/is/image/saks/0474725441057_247.jpg    ",
  name: "mix media dress",
  category: "one piece",
  dress_code: "work",
  color: "b&w",
  size: "M",
  brand: "Collective",
  purchased_from: "Saks")

cx_item13 = Item.create(
  img_url: "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=72499668",
  name: "REISS sweatshirt",
  category: "top",
  dress_code: "casual",
  color: "feathers",
  size: "S",
  brand: "REISS",
  purchased_from: "Bloomingdales")

 cx_item1.user_id = cx.id
 cx_item2.user_id = cx.id
 cx_item3.user_id = cx.id
 cx_item4.user_id = cx.id
 cx_item5.user_id = cx.id
 cx_item6.user_id = cx.id
 cx_item7.user_id = cx.id
 cx_item8.user_id = cx.id
 cx_item9.user_id = cx.id
 cx_item10.user_id = cx.id
 cx_item11.user_id = cx.id
 cx_item12.user_id = cx.id
 cx_item13.user_id = cx.id
 cx_item1.save
 cx_item2.save
 cx_item3.save
 cx_item4.save
 cx_item5.save
 cx_item6.save
 cx_item7.save
 cx_item8.save
 cx_item9.save
 cx_item10.save
 cx_item11.save
 cx_item12.save
 cx_item13.save


jf = User.create(
  name: "jessfranko",
  email: "jess@ga.co",
  password: "password",
  city: "New Jersey",
  state: "NJ",
  role: "client")

jf_item1 = Item.create(
  img_url: "https://item2.tradesy.com/r/4d05e90b08b29183be526f3c77dcc21030ef12c95bfa76d9ab7149d6cbfdc65f/355/355/dresses/bcbg/2-xs/bcbg-rompers-jumpsuits-1207826.jpg",
  name: "BCBG onsie",
  category: "one piece",
  dress_code: "work",
  color: "black",
  size: "M",
  brand: "BCBG",
  purchased_from: "BCBG")

jf_item2 = Item.create(
  img_url: "https://item5.tradesy.com/r/f9cfd9fa09c0990255ebbf605725b66e/355/355/dresses/all-saints/6-s/all-saints-flirty-feminine-maxi-dress-brown-and-white-floral-864174.jpg",
  name: "FLoral Dress",
  category: "one piece",
  dress_code: "casual",
  color: "white",
  size: "M",
  brand: "Rag & Bone",
  purchased_from: "Nordstrom's")

jf_item3 = Item.create(
  img_url: "http://www1.assets-gap.com/webcontent/0008/685/673/cn8685673.jpg",
  name: "B&W Pencil Skirt",
  category: "bottom",
  dress_code: "work",
  color: "multi",
  size: "M",
  brand: "Banana Republic",
  purchased_from: "Banana")

jf_item4 = Item.create(
  img_url: "http://www.aristofashion.com/shop/images/02_02_womens_mohair_sweater_L_48006.jpg",
  name: "Mohair-blend sweater",
  category: "top",
  dress_code: "casual",
  color: "light grey",
  size: "M",
  brand: "H&M",
  purchased_from: "H&M")

jf_item5 = Item.create(
  img_url: "http://bananarepublic.gap.com/assets/common/clear.gif",
  name: "Eternity necklace",
  category: "accessory",
  dress_code: "night out",
  color: "silver",
  size: "one-size",
  brand: "Banana Republic",
  purchased_from: "Banana Republic")

jf_item6 = Item.create(
  img_url: "http://imgur.com/Gbjtwte",
  name: "WDI hoodie",
  category: "top",
  dress_code: "work",
  color: "grey",
  size: "M",
  brand: "General Assembly",
  purchased_from: "Guildenstern")

jf_item7 = Item.create(
  img_url: "https://s7.jcrew.com/is/image/jcrew/B1089_PA3029_m?$pdp_tn75$",
  name: "Flannel Shirt",
  category: "top",
  dress_code: "work",
  color: "b&w buffalo check",
  size: "M",
  brand: "jcrew",
  purchased_from: "J crew")

jf_item7 = Item.create(
  img_url: "https://s7.jcrew.com/is/image/jcrew/B1089_PA3029_m?$pdp_tn75$",
  name: "Flannel Shirt",
  category: "top",
  dress_code: "work",
  color: "b&w buffalo check",
  size: "M",
  brand: "jcrew",
  purchased_from: "J crew")

jf_item8 = Item.create(
  img_url: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQiJhP-ehxbXmHScE5dNJWfnMXzBnTePaVQ0hF9naaYV3tSjLToU_0nqujZx9ARSqX4kBctOWmZ&usqp=CAY",
  name: "black boots",
  category: "accessory",
  dress_code: "night out",
  color: "black",
  size: "9",
  brand: "stewart weitzman",
  purchased_from: "eBay")

jf_item8 = Item.create(
  img_url: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQiJhP-ehxbXmHScE5dNJWfnMXzBnTePaVQ0hF9naaYV3tSjLToU_0nqujZx9ARSqX4kBctOWmZ&usqp=CAY",
  name: "black boots",
  category: "accessory",
  dress_code: "night out",
  color: "black",
  size: "9",
  brand: "stewart weitzman",
  purchased_from: "eBay")

jf_item8 = Item.create(
  img_url: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQiJhP-ehxbXmHScE5dNJWfnMXzBnTePaVQ0hF9naaYV3tSjLToU_0nqujZx9ARSqX4kBctOWmZ&usqp=CAY",
  name: "black boots",
  category: "accessory",
  dress_code: "night out",
  color: "black",
  size: "9",
  brand: "stewart weitzman",
  purchased_from: "eBay")

jf_item9 = Item.create(
  img_url: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTz3YoZW3P_5hmqT-dkhYjXcHgs72rsfwXLK7xVOerP4m2-Ezh1cjnjx0UCqKPa7jax2CxQDFFN&usqp=CAE",
  name: "ankle jeans",
  category: "bottom",
  dress_code: "casual",
  color: "blue",
  size: "10",
  brand: "jcrew",
  purchased_from: "j crew")

jf_item10 = Item.create(
  img_url: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcR0eh2OcRoBPvBdS3-DAQ2w9qVkH0X8qm2j-Eo5Yqmugf-RLyoL3WmAPbarhgWO6b0qceWmZbp9&usqp=CAE",
  name: "black leggings",
  category: "bottom",
  dress_code: "casual",
  color: "black",
  size: "M",
  brand: "Express",
  purchased_from: "Express")

jf_item11 = Item.create(
  img_url: "https://dm.victoriassecret.com/product/760x1013/V383943_CROP1.jpg",
  name: "cardigan",
  category: "top",
  dress_code: "casual",
  color: "beige",
  size: "M",
  brand: "VS",
  purchased_from: "Victorias Secret")

jf_item12 = Item.create(
  img_url: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTv2okbmopSPVv-MmU_7TCCa3Kz5JYWWfCecRFBnvfVLltNE0nWsIdA858XP1OwdI3hq_1aSfQj&usqp=CAE",
  name: "workout top",
  category: "top",
  dress_code: "casual",
  color: "pink",
  size: "M",
  brand: "Under Armour",
  purchased_from: "Sports Authority")

jf_item13 = Item.create(
  img_url: "http://image.s5a.com/is/image/saks/0478500071958_247x329.jpg",
  name: "silk printed dress",
  category: "one piece",
  dress_code: "night out",
  color: "dark blue",
  size: "M",
  brand: "Eva",
  purchased_from: "Saks")

 jf_item1.user_id = jf.id
 jf_item2.user_id = jf.id
 jf_item3.user_id = jf.id
 jf_item4.user_id = jf.id
 jf_item5.user_id = jf.id
 jf_item6.user_id = jf.id
 jf_item7.user_id = jf.id
 jf_item8.user_id = jf.id
 jf_item9.user_id = jf.id
 jf_item10.user_id = jf.id
 jf_item11.user_id = jf.id
 jf_item12.user_id = jf.id
 jf_item13.user_id = jf.id

 jf_item1.save
 jf_item2.save
 jf_item3.save
 jf_item4.save
 jf_item5.save
 jf_item6.save
 jf_item7.save
 jf_item8.save
 jf_item9.save
 jf_item10.save
 jf_item11.save
 jf_item12.save
 jf_item13.save

sm = User.create(

name: "Sarah",
email: "p.sweetpotato@gmail.com",
password: "potatoes4eva",
city: "Brooklyn",
state: "NY",
role: "client")

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
  purchased_from: "Catbird")

sm_item13 = Item.create(
  img_url: "https://catbirdnyc.com/shop/images/T/bars_earrings.jpg",
  name: "Bar Earrings",
  category: "accessory",
  dress_code: "dress",
  color: "rose gold",
  size: "one size",
  brand: "Catbird",
  purchased_from: "Catbird")

sm_item14 = Item.create(
  img_url: "http://thingd-media-ec3.thefancy.com/default/398141766869455723_a044ef62af06.jpg",
  name: "Transport Tote",
  category: "accessory",
  dress_code: "casual",
  color: "cognac",
  size: "one size",
  brand: "Madewell",
  purchased_from: "Madewell")

sm_item15 = Item.create(
  img_url: "http://images.urbanoutfitters.com/is/image/UrbanOutfitters/32317984_040_d?$xlarge$&defaultImage=",
  name: "Purse",
  category: "accessory",
  dress_code: "casual",
  color: "black",
  size: "one size",
  brand: "Urban Outfitters",
  purchased_from: "Urban Outfitters")

sm_item16 = Item.create(
  img_url: "http://imgur.com/Gbjtwte",
  name: "WDI hoodie",
  category: "top",
  dress_code: "work",
  color: "grey",
  size: "M",
  brand: "General Assembly",
  purchased_from: "Guildenstern")

sm_item17 = Item.create(
  img_url: "https://s7.jcrew.com/is/i/jcrew/B1089_PA3029_m?$pdp_tn75$",
  name: "Flannel Shirt",
  category: "top",
  dress_code: "work",
  color: "b&w buffalo check",
  size: "M",
  brand: "jcrew",
  purchased_from: "J crew")

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
  sm_item16.user_id = sm.id
  sm_item17.user_id = sm.id

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
  sm_item16.save
  sm_item17.save

