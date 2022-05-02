require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Stores.find(1)
@store2 = Stores.find(2)
# puts @store1.name
# puts @store2.name
@store1.name = 'Toronto'
# puts @store1.name