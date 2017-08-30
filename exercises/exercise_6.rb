require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"



@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Barak", last_name: "Obama", hourly_rate: 120)
@store1.employees.create(first_name: "Justin", last_name: "Biber", hourly_rate: 5)
@store1.employees.create(first_name: "Elan", last_name: "Musk", hourly_rate: 200)
