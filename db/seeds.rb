# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# DUMMY DATA AND ASSOCIATIONS #
# - Airplane, Flights, Reservations and Users - #


#-- create planes --#
print "creating airplanes..."

Airplane.destroy_all

a1 = Airplane.create! name: 'Airbus A380', rows: 20, columns: 6
a2= Airplane.create! name: 'Airbus A330', rows: 14, columns: 4
a3= Airplane.create! name: 'Concord 2011', rows: 8, columns: 3

puts "created #{Airplane.count} planes"



#-- create flights --#
print "creating flights..."

Flight.destroy_all

<<<<<<< HEAD
f1= Flight.create! number: 'A232', date: '2021-11-01', origin: 'new york', destination: 'melbourne', :airplane_id = 1
f2= Flight.create! number: 'D222', date: '2021-11-01', origin: 'melbourne', destination: 'new york', :airplane_id = 2
f3= Flight.create! number: 'G302', date: '2021-11-01', origin: 'singapore', destination: 'sydney', :airplane_id = 3
=======
f1= Flight.create! number: 'A232', date: '2021-11-01', origin: 'new york', destination: 'melbourne', airplane_id: '1'

f2= Flight.create! number: 'D222', date: '2021-11-01', origin: 'melbourne', destination: 'new york', airplane_id: '2'
f3= Flight.create! number: 'G302', date: '2021-11-01', origin: 'singapore', destination: 'sydney', airplane_id: '3'
>>>>>>> 8d07639cacff0708404350ff59de85a8945d0aac


puts "created #{Flight.count} flights"



#-- create users --#
## will need to add password/login details later ##
# print "creating users..."
#
# u1= User.create!  password: "chicken", email: "derek@gmail.com"
# u2= User.create!  password: "chicken", email: "goutham@gmail.com"
# u3= User.create!  password: "chicken", email: "josh@gmail.com"
#
# puts "created #{User.count} users"



#--create reservations--#
## need to change from rown to row later (error needs to be fixed) ##
print "creating reservations..."

Reservation.destroy_all

r1= Reservation.create! row: 2, column: 'd'
r2= Reservation.create! row: 10, column: 'c'
r3= Reservation.create! row: 8, column: 'k'

puts "created #{Reservation.count} reservations"


#-- create associations between reservations & flights --#
f1.reservations << r1
f2.reservations << r2
f3.reservations << r3



# #-- create associations between reservations & users --#
# u1.reservations << r1
# u2.reservations << r3
# u3.reservations << r2


#-- create associations [flight to airplane]--#
a1.flights << f1 << f2
# flight 1 & 2 belong to airplane 1
a2.flights << f3
# flight 3 belongs to airplane 2
