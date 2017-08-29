require_relative '../setup'
puts "Exercise 1"
puts "----------"



class Store < ActiveRecord::Base

end

burnaby = Store.new do |burnaby|
  burnaby.name = "Burnaby"
  burnaby.annual_revenue = 300000
  burnaby.mens_apparel = true
  burnaby.womens_apparel = true
  burnaby.save
end

richmond = Store.new do |s|
  s.name = "Richmond"
  s.annual_revenue = 1260000
  s.womens_apparel = true
  s.mens_apparel = false
  s.save
end

gastown = Store.new do |s|
  s.name = "Gastown"
  s.annual_revenue = 190000
  s.womens_apparel = false
  s.mens_apparel = true
  s.save
end

puts "There are #{Store.count} stores in stores table"



# Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# Richmond (annual_revenue of 1260000 carries women's apparel only)
# Gastown (annual_revenue of 190000 carries men's apparel only)