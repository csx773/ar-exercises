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

puts "Store 1 name: #{@store1.name}"
puts "Store 2 name: #{@store2.name}"

@store1.name = 'Vancouver'
@store1.save

puts "Store 1 NEW name: #{@store1.name}"
puts "Store 2 name: #{@store2.name}"

