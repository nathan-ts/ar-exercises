require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Stores.create([
  {:name => 'Surrey', :annual_revenue => 224000, :mens_apparel => false, :womens_apparel => true}, 
  {:name => 'Whistler', :annual_revenue => 1900000, :mens_apparel => true, :womens_apparel => false}, 
  {:name => 'Yaletown', :annual_revenue => 430000, :mens_apparel => true, :womens_apparel => true}
])

@mens_stores = Stores.where(mens_apparel: true)
@mens_stores.each { |store| 
  puts "#{store.name} has annual revenue of #{store.annual_revenue}" 
}

@womens_stores_6digits = Stores.where(
  womens_apparel: true
).where(
  "annual_revenue < 1000000"
)
@womens_stores_6digits.each { |store| 
  puts "#{store.name} has annual revenue of #{store.annual_revenue}" 
}