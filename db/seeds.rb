# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tickets = Ticket.create([ 
	{concert_name:"Cher", date_time:"9/11/2014 19:30:00", venue:"Times Union Center", price:"164.90", quantity:"2", trade_value: "Beyonce and JayZ Tickets"},
	{concert_name: "On the Run Tour" , date_time: "9/27/2014 14:00:00" , venue: "Great Lawn at Central Park" , price: "90.14" , quantity: "1" , trade_value: "Hard Summer Tickets" },
	{concert_name: "Hard Fest", date_time: "8/3/2014 19:00:00" , venue: "El Monte Great Park" , price: "88.00" , quantity: "4" , trade_value: "iphone 4s" }
	])