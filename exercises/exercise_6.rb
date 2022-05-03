require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"





@store1.employees.create(first_name: "Inori", last_name: "Yuzuriha", hourly_rate: 60)
@store1.employees.create(first_name: "Shu", last_name: "Ouma", hourly_rate: 40)
@store1.employees.create(first_name: "Ayase", last_name: "Shinomiya", hourly_rate: 40)
@store2.employees.create(first_name: "Mitsuha", last_name: "Miyamizu", hourly_rate: 44)
@store2.employees.create(first_name: "Taki", last_name: "Tachibana", hourly_rate: 50)
@store2.employees.create(first_name: "Natsumi", last_name: "Suga", hourly_rate: 69)

@store1.employees.each { |em| puts "#{em.first_name} #{em.last_name}" }
@store2.employees.each { |em| puts "#{em.first_name} #{em.last_name}" }