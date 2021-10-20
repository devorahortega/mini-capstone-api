product = Product.new(name: "Bottle", price: 15.00, image_url: "https://pizzalandhalifax.ca/wp-content/uploads/2016/09/45.jpg", description: "A useful plastic waterbottle for when you do anything and want to stay hydrated.")
product.save

product = Product.create(name: "Cow", price: 200.00, image_url: "https://upload.wikimedia.org/wikipedia/commons/0/0c/Cow_female_black_white.jpg", description: "For all ye introverts, to never have to leave the house to buy milk again!")
product.save

product = Product.create(name: "Cheese", price: 3.00, image_url: "https://static01.nyt.com/images/2012/06/03/magazine/03wmt/mag-03WMT-t_CA0-superJumbo.jpg", description: "A slice of cheese.")
product.save
