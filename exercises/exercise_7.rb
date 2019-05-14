require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# @storeYaletown = Store.find_by(id: 6)

# @storeYaletown.employees.create(first_name: "Sam1", last_name: "Chen1", hourly_rate: 60)
# @storeYaletown.employees.create(first_name: "Sam2", last_name: "Chen2", hourly_rate: 40)
# @storeYaletown.employees.create(first_name: "Ben1", last_name: "Son1", hourly_rate: 160)
# # this following will fail
# @storeYaletown.employees.create(first_name: "Ben2", last_name: "Son2", hourly_rate: 220)
# @storeYaletown.employees.create(first_name: "Ben3", hourly_rate: 100)
# @storeYaletown.employees.create(last_name: "Son4", hourly_rate: 102)


# # testing store 
# testStore1 = Store.create(name: "test1", annual_revenue: 10, mens_apparel: true, womens_apparel: false )
# testStore2 = Store.create(name: "test2", annual_revenue: 0, mens_apparel: true, womens_apparel: false )

# testStore3 = Store.create(name: "test3", annual_revenue: -3, mens_apparel: true, womens_apparel: false )
# testStore4 = Store.create(name: "te", annual_revenue: 10, mens_apparel: true, womens_apparel: false )

puts 'Please enter a name for a store:'
inputName = gets.chomp

puts 'Please annual income for a store:'
inputIncome = gets.chomp

newStore = Store.create(name: inputName, annual_revenue: inputIncome )

newStore.errors.messages.each do |error|
    puts "ERROR: #{error} "
end
    


# person = Person.new
# person.valid? # => false
# person.errors.messages
#  # => {:name=>["can't be blank", "is too short (minimum is 3 characters)"]}




