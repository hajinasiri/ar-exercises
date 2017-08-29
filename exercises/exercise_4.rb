require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

surrey = Store.new do |s|
  s.name = "Surrey"
  s.annual_revenue = 224000
  s.mens_apparel = false
  s.womens_apparel = true
  s.save
end

whistler = Store.new do |s|
  s.name = "Whistler"
  s.annual_revenue = 1900000
  s.mens_apparel = true
  s.womens_apparel = false
  s.save
end

yaletown = Store.new do |s|
  s.name = "Yaletown"
  s.annual_revenue = 430000
  s.mens_apparel = true
  s.womens_apparel = true
  s.save
end

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each{|s|
puts "#{s.name}  #{s.annual_revenue}"
}

@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

@womens_stores.each{|s|
puts "#{s.name} #{s.annual_revenue}"
}


