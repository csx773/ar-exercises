require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"


puts 'Please enter a name for a store:'
inputName = gets.chomp

puts 'Please annual income for a store:'
inputIncome = gets.chomp

newStore = Store.create(name: inputName, annual_revenue: inputIncome )

newStore.errors.messages.each do |error|
    puts "ERROR: #{error} "
end
    



