require './products'
require './store'

samsung_s6 = Products.new # is initialize
samsung_s6.id = 1
samsung_s6.name =  'Samsung S6'
samsung_s6.price = 250
samsung_s6.delivery = '2 days'

samsung_s6_edge = Products.new
samsung_s6_edge.id = 2
samsung_s6_edge.name = 'Samsung S6 Edge'
samsung_s6_edge.price = 300
samsung_s6_edge.delivery = '7 days'

samsung_note4 = Products.new
samsung_note4.id = 3
samsung_note4.name = 'Samsung Note 4'
samsung_note4.price = 275
samsung_note4.delivery = '2 days'

samsung_note5 = Products.new
samsung_note5.id = 4
samsung_note5.name = 'Samsung Note 5'
samsung_note5.price = 350
samsung_note5.delivery = '7 days'

phoneshop = Store.new
phoneshop.add(samsung_s6)
phoneshop.add(samsung_s6_edge)
phoneshop.add(samsung_note4)
phoneshop.add(samsung_note5)

# here begins the code to run the shop!

puts "Welcome to the phone shop!"
puts ""
phoneshop.menu
