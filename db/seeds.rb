# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Tarea 1 de consola CodinDojo
Ninja.where(dojo_id: 1).destroy_all
Dojo.where(id: 1).destroy_all

Ninja.where(dojo_id: 2).destroy_all
Dojo.where(id: 2).destroy_all

Ninja.where(dojo_id: 3).destroy_all
Dojo.where(id: 3).destroy_all
puts "Tarea 1.Hecha."

#Tarea 2

h = Dojo.new
h.name = "Dojo 1"
h.city = "Santiago"
h.state = "AH"
h.save

h = Dojo.new
h.name = "Dojo 2"
h.city = "Peru"
h.state = "BC"
h.save

h = Dojo.new
h.name = "Dojo 3"
h.city = "Argentina"
h.state = "DE"
h.save
puts "Tarea 2.Hecha"

#Tarea 3
dojo = Dojo.new
dojo.save
puts "Tarea 3.Hecha"

#Tarea 4, 5, 6
h = Ninja.new
h.first_name = "Mario"
h.last_name =  "Perez"
h.dojo = Dojo.where(name: "Dojo 1").first
h.save

h = Ninja.new
h.first_name = "Romina"
h.last_name =  "Zunino"
h.dojo = Dojo.where(name: "Dojo 1").first
h.save

h = Ninja.new
h.first_name = "Augusto"
h.last_name =  "Roman"
h.dojo = Dojo.where(name: "Dojo 1").first
h.save

h = Ninja.new
h.first_name = "Laura"
h.last_name =  "Mancilla"
h.dojo = Dojo.where(name: "Dojo 2").first
h.save

h = Ninja.new
h.first_name = "Alejandra"
h.last_name =  "Pino"
h.dojo = Dojo.where(name: "Dojo 2").first
h.save

h = Ninja.new
h.first_name = "Rocio"
h.last_name =  "Neira"
h.dojo = Dojo.where(name: "Dojo 2").first
h.save

h = Ninja.new
h.first_name = "Maria"
h.last_name =  "Allende"
h.dojo = Dojo.where(name: "Dojo 3").first
h.save

h = Ninja.new
h.first_name = "Celeste"
h.last_name =  "Fuentes"
h.dojo = Dojo.where(name: "Dojo 3").first
h.save

h = Ninja.new
h.first_name = "Blanca"
h.last_name =  "Lumin"
h.dojo = Dojo.where(name: "Dojo 3").first
h.save

puts dojo.errors.messages
puts "Tarea 4,5,6. Hecha"
puts "Ninjas: #{Ninja.all.count}"

#Tarea 7

#Find, requiere el ID
#where, requiere cualquier parametro
#Where siempre retorna un array. No puedo trabajar con arrays sino con el elemento Dojo

puts Dojo.where(name: "Dojo 1").first.ninja
puts "Tarea 7.Hecha"

#Tarea 8
puts Dojo.where(name: "Dojo 2").
  first.ninja.order("created_at desc").
  pluck(:first_name)

  puts "Tarea 8. Hecha"

  #Tarea 9
  
  puts "Antes: #{Dojo.where(name: "Dojo 2").count}"
  
  Dojo.where(name: "Dojo 2").first.destroy

  puts "Despues: #{Dojo.where(name: "Dojo 2").count}"
  
  puts "Tarea 9. Hecha"