require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Enter a name for your store"
storeName = gets.chomp
newStore = Store.create(name: storeName)
puts newStore.errors.full_messages
