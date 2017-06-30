CartedProduct.create!([
  {user_id: 2, item_id: 1, quantity: 2, status: "removed", order_id: nil},
  {user_id: 2, item_id: 1, quantity: 2, status: "removed", order_id: nil},
  {user_id: 2, item_id: 1, quantity: 2, status: "removed", order_id: nil},
  {user_id: 2, item_id: 1, quantity: 2, status: "removed", order_id: nil},
  {user_id: 2, item_id: 1, quantity: 2, status: "removed", order_id: nil},
  {user_id: 2, item_id: 6, quantity: 1, status: "removed", order_id: nil},
  {user_id: 2, item_id: 1, quantity: 1, status: "removed", order_id: nil},
  {user_id: 2, item_id: 1, quantity: 1, status: "purchased", order_id: 24},
  {user_id: 2, item_id: 6, quantity: 2, status: "purchased", order_id: 25},
  {user_id: 2, item_id: 1, quantity: 10, status: "purchased", order_id: 26},
  {user_id: 2, item_id: 1, quantity: 5, status: "purchased", order_id: 27},
  {user_id: 2, item_id: 1, quantity: 5, status: "purchased", order_id: 29},
  {user_id: 2, item_id: 1, quantity: 5, status: "purchased", order_id: 31},
  {user_id: 2, item_id: 6, quantity: 2, status: "purchased", order_id: 32}
])
Category.create!([
  {name: "expensive"},
  {name: "rwd"},
  {name: "awd"}
])
CategoryItem.create!([
  {category_id: 1, item_id: 1},
  {category_id: 1, item_id: 5},
  {category_id: 1, item_id: 2},
  {category_id: 2, item_id: 6},
  {category_id: 2, item_id: 2},
  {category_id: 2, item_id: 5},
  {category_id: 3, item_id: 1},
  {category_id: 3, item_id: 4},
  {category_id: 3, item_id: 3}
])
Image.create!([
  {url: "https://s-media-cache-ak0.pinimg.com/originals/42/cf/06/42cf06d0d2c090b3c71dec2681f5a962.jpg", item_id: 1},
  {url: "http://i1223.photobucket.com/albums/dd507/r34steve/R34.jpg", item_id: 1},
  {url: "https://s-media-cache-ak0.pinimg.com/originals/5c/eb/3c/5ceb3c94dc90c6b19cae6b54df7c647d.jpg", item_id: 6},
  {url: "http://cdn.wallpapersafari.com/93/70/fu4h9H.jpg", item_id: 6},
  {url: "https://s-media-cache-ak0.pinimg.com/736x/77/5c/16/775c166b8a198a395d773ec0b108978d.jpg", item_id: 5},
  {url: "http://ridesandstyling.com/database/images/2014/05/nissan-silvia-s15-white-5.jpg", item_id: 5},
  {url: "http://www.japanesesportcars.com/images/wallpapers/supra10242.jpg", item_id: 2},
  {url: "http://ridesandstyling.com/database/images/2012/07/mitsubishi-evolution-ix-silver-white-31.jpg", item_id: 4},
  {url: "http://i.imgur.com/GlBovKl.jpg", item_id: 4},
  {url: "https://i.ebayimg.com/00/s/NDI2WDY0MA==/z/TOQAAOSw-0xYfnWb/$_86.JPG", item_id: 3},
  {url: "http://www.tnaauto.com/v/vspfiles/photos/FF-0405WRXSTI-5.jpg", item_id: 3},
  {url: "http://www.moibbk.com/images/toyota-supra-white-3.jpg", item_id: 2}
])
Item.create!([
  {name: "Nissan GTR", color: "blue", price: "1600.0", description: "JDM Legend", stock: true, supplier_id: 1},
  {name: "Nissan 370z", color: "Black", price: "950.0", description: "Great Daily Car", stock: true, supplier_id: 1},
  {name: "Nissan Silvia", color: "White", price: "1000.0", description: "Drift Missle", stock: true, supplier_id: 1},
  {name: "Toyota Supra", color: "white", price: "1450.0", description: "JDM Legend", stock: true, supplier_id: 2},
  {name: "Mitsubishi Evo", color: "silver", price: "950.0", description: "Rally Legend", stock: true, supplier_id: 4},
  {name: "Subaru WRX STI", color: "blue", price: "1200.0", description: "Rally Legend", stock: true, supplier_id: 3}
])
Order.create!([
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: "1600.0", tax: "144.0", total: "1744.0"},
  {user_id: 2, subtotal: "1600.0", tax: "144.0", total: "1744.0"},
  {user_id: 2, subtotal: "1000.0", tax: "90.0", total: "1090.0"},
  {user_id: 2, subtotal: "1600.0", tax: "144.0", total: "1744.0"},
  {user_id: 2, subtotal: "1600.0", tax: "144.0", total: "1744.0"},
  {user_id: 2, subtotal: "1000.0", tax: "90.0", total: "1090.0"},
  {user_id: 2, subtotal: "1000.0", tax: "90.0", total: "1090.0"},
  {user_id: 2, subtotal: "1000.0", tax: "90.0", total: "1090.0"},
  {user_id: 2, subtotal: "1600.0", tax: "144.0", total: "1744.0"},
  {user_id: 2, subtotal: "1600.0", tax: "144.0", total: "1744.0"},
  {user_id: 2, subtotal: "1200.0", tax: "108.0", total: "1308.0"},
  {user_id: 2, subtotal: "1000.0", tax: "90.0", total: "1090.0"},
  {user_id: 2, subtotal: "1450.0", tax: "130.5", total: "1580.5"},
  {user_id: 2, subtotal: "1600.0", tax: "144.0", total: "1744.0"},
  {user_id: 2, subtotal: "1600.0", tax: "144.0", total: "1744.0"},
  {user_id: 2, subtotal: "1200.0", tax: "108.0", total: "1308.0"},
  {user_id: 2, subtotal: "1600.0", tax: "144.0", total: "1744.0"},
  {user_id: 2, subtotal: "0.0", tax: nil, total: nil},
  {user_id: 2, subtotal: "1600.0", tax: "144.0", total: "1744.0"},
  {user_id: 2, subtotal: "1600.0", tax: "144.0", total: "1744.0"},
  {user_id: 2, subtotal: "1900.0", tax: "171.0", total: "2071.0"},
  {user_id: 2, subtotal: "16000.0", tax: "1440.0", total: "17440.0"},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 2, subtotal: "8000.0", tax: "720.0", total: "8720.0"},
  {user_id: 2, subtotal: "1900.0", tax: "171.0", total: "2071.0"}
])
Supplier.create!([
  {name: "Nissan", email: "nissan@gmail.com", phone_number: "773-555-5151"},
  {name: "Toyota", email: "toyota@gmail.com", phone_number: "773-555-5152"},
  {name: "Subaru", email: "subaru@gmail.com", phone_number: "773-555-5153"},
  {name: "Mitsubishi", email: "mitsubishi@gmail.com", phone_number: "773-555-5482"}
])
User.create!([
  {name: "Bob", email: "bob@bob.com", password: "password",password_confirmation: "password", admin: false},
  {name: "Karol", email: "karolgurba@gmail.com",password: "password",password_confirmation: "password", admin: true}
])
