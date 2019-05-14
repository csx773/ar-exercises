require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@totalRevenue = Store.sum(:annual_revenue)
@numStores = Store.count

puts "Total revenue of all stores are: #{@totalRevenue}"
puts "Average revenue is: #{@totalRevenue / @numStores}"

@highRevenueStores = Store.where('annual_revenue > ?', 1000000)

@highRevenueStores.each do |store|
    puts "Store with greater than $1M sales: #{store.name}"
end
