require_relative '../setup'

puts "Exercise 1"
puts "----------"

# user = User.create(name: "David", occupation: "Code Artist")

# * Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# * Richmond (annual_revenue of 1260000 carries women's apparel only)
# * Gastown (annual_revenue of 190000 carries men's apparel only)

# Your code goes below here ...

burnabyStore = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true )
richmondStore = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true )
gastownStore = Store.create(name: "Gastown", annual_revenue: 19000, mens_apparel: true, womens_apparel: false )

puts "Number of stores: #{Store.count}"

