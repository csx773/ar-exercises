require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# david = User.find_by(name: 'David')

# burnaby store
@store1 = Store.find_by(id: 1);
# richmond store
@store2 = Store.find_by(id: 2);

puts "Store 1 revenue: #{@store1.annual_revenue}"
puts "Store 2 revenue: #{@store2.annual_revenue}"

@store1.annual_revenue = 255250
@store1.save

puts "Store 1 NEW revenue: #{@store1.annual_revenue}"
puts "Store 2 revenue: #{@store2.annual_revenue}"

