# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

    
airports = Airport.create([{code:"SFO"}, {code: "STL"}, {code: "HNL"}])
flights = Flight.create([
        {departure_airport_id: airports.first.id, arrival_airport_id: airports.last.id, start_datetime:"2020-12-25 07:00:00", duration:10 }, 
        {departure_airport_id: airports.first.id, arrival_airport_id: airports.last.id, start_datetime:"2020-12-25 04:00:00", duration:10 }, 
        {departure_airport_id: airports.first.id, arrival_airport_id: airports.last.id, start_datetime:"2020-12-25 01:00:00", duration:10 },
        
        {departure_airport_id: airports.last.id, arrival_airport_id: airports.first.id, start_datetime:"2020-12-23 09:00:00", duration:2 },

        {departure_airport_id: airports.last.id, arrival_airport_id: airports.first.id, start_datetime:"2020-12-23 03:00:00", duration:2 }])
