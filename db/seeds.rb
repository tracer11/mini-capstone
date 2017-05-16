#item = Item.new(name: "Nissan GTR", color: "blue", price: 1500, image: "https://i.ytimg.com/vi/LU6y4F4bD8Q/maxresdefault.jpg", description: "JDM Legend")
#item.save

#item = Item.new(name: "Toyota Supra", color: "white", price: 1400, image: "http://www.the-lowdown.com/media/mhemming/supra/post/Supra%202.jpg", description: "JDM Legend")
#item.save

#item = Item.new(name: "Subaru WRX STI", color: "blue", price: 1000, image: "https://www.revvolution.com/image/albums-4-59b-d6-d2-0/2005-subaru-impreza-wrx-sti-betsy-blue-32540.jpg", description: "Rally Legend")
#item.save

#item = Item.new(name: "Mitsubishi Evo", color: "silver", price: 1000, image: "http://ridesandstyling.com/database/images/2012/07/mitsubishi-evolution-ix-silver-white-42.jpg", description: "Rally Legend")
#item.save

supplier = Supplier.create(name: "Nissan", email: "nissan@gmail.com", phone_number: "773-555-5151")

supplier = Supplier.create(name: "Toyota", email: "toyota@gmail.com", phone_number: "773-555-5152")

supplier = Supplier.create(name: "Subaru", email: "subaru@gmail.com", phone_number: "773-555-5153")
