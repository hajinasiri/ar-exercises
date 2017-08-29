require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts "Total annual revenue is #{Store.sum("annual_revenue")}"
puts "The average revenue is #{Store.sum("annual_revenue") / Store.count}"
@topStores = Store.where("annual_revenue > ?", 1000000).count
puts "#{@topStores} stores are generating more than 1000000 annually"
