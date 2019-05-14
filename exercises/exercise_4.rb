require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# * Surrey (annual_revenue of 224000, carries women's apparel only)
# * Whistler (annual_revenue of 1900000 carries men's apparel only)
# * Yaletown (annual_revenue of 430000 carries men's and women's apparel)

surreyStore = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistlerStore = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletownStore = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

puts "Number of stores: #{Store.count}"

@mens_store = Store.where(mens_apparel: true)

@mens_store.each do |store|
    puts "#{store.name} store have revenue: #{store.annual_revenue}"
end

@womens_store = Store.where({womens_apparel: true, annual_revenue: 1..1000000})

@womens_store.each do |store|
    puts "#{store.name} store have revenue: #{store.annual_revenue}"
end

