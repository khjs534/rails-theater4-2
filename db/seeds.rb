# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.create(title: "Super Action flick!", playing: true)
Movie.create(title: "Dark Comedy II", playing: true)
Movie.create(title: "The Most Romantic Movie Ever", playing: true)
Movie.create(title: "Dark Comedy I", playing: false)

Admin.create(username:"supderduperuser", password:"rootpassword123" )

theater = Theater.new(name: "Rails Theater")
theater.save

Auditorium.create(auditorium_number: 1,seating_capacity: 50, theater_id: theater.id)
Auditorium.create(auditorium_number: 2,seating_capacity: 50, theater_id: theater.id)
Auditorium.create(auditorium_number: 3,seating_capacity: 50, theater_id: theater.id)
Auditorium.create(auditorium_number: 4,seating_capacity: 50, theater_id: theater.id)
Auditorium.create(auditorium_number: 5,seating_capacity: 50, theater_id: theater.id)

Showing.create(time: "Mon, 20 Feb 2017 22:30:00 UTC +00:00",movie_id: 1, auditorium_id: 1)
Showing.create(time: "Mon, 20 Feb 2017 24:00:00 UTC +00:00",movie_id: 1, auditorium_id: 2)

Showing.create(time: "Mon, 20 Feb 2017 22:30:00 UTC +00:00",movie_id: 2, auditorium_id: 4)
Showing.create(time: "Mon, 20 Feb 2017 24:00:00 UTC +00:00",movie_id: 2, auditorium_id: 5)

Showing.create(time: "Mon, 21 Feb 2017 22:30:00 UTC +00:00",movie_id: 3, auditorium_id: 5)
Showing.create(time: "Mon, 21 Feb 2017 24:00:00 UTC +00:00",movie_id: 3, auditorium_id: 5)

Sale.create(customer_name:"Jerry", customer_email:"jerryj@gmail.com",showing_id: 1)
Sale.create(customer_name:"Jerry", customer_email:"jerryj@gmail.com",showing_id: 3)
Sale.create(customer_name:"Jerry", customer_email:"jerryj@gmail.com",showing_id: 5)
Sale.create(customer_name:"Jerry", customer_email:"jerryj@gmail.com",showing_id: 6)

