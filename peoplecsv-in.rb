#!/usr/bin/env ruby

require 'rubygems'
require 'fastercsv'

filepath = File.expand_path("./people.csv")

counter = -1
puts "\n"

FasterCSV.foreach(filepath) do |row|
  counter += 1
  # skip header line
  next if counter.zero?

  puts "Reading record #{counter} for person #{row[0]}.  This person has #{row[1]} hair with #{row[2]} eyes."
end

puts "\n\n"