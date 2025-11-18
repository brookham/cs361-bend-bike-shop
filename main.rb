#!/usr/bin/env ruby

require_relative 'bike'
require_relative 'rental'
require_relative 'luggage'

items = [:apple, :water, :protein_bar]

luggage = Luggage.new(Luggage::DEFAULT_MAX_CAPACITY, items)
bike = Bike.new(id: 1, color: :pink, price: 99.99, luggage: luggage)

rental = Rental.new(bike)

puts "Total Price: #{rental.price}, Total Weight: #{rental.weight}"

