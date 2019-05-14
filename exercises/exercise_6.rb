require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Sam", last_name: "Chen", hourly_rate: 80)
@store1.employees.create(first_name: "Tom", last_name: "Dude", hourly_rate: 100)


@store2.employees.create(first_name: "Ben", last_name: "Guy", hourly_rate: 40)
@store2.employees.create(first_name: "Benny", last_name: "Sunny", hourly_rate: 60)

@store1.employees.each do |person|
    puts "#{person.first_name} works at #{@store1.name}"
end

@store2.employees.each do |person|
    puts "#{person.first_name} works at #{@store2.name}"
end


