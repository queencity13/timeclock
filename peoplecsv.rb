#!/usr/bin/env ruby

require 'rubygems'
require 'fastercsv'

data = [
  {:name => 'Adam',      :eyecolor => 'blue',  :haircolor => 'dirty blonde'},
  {:name => 'Mike',      :eyecolor => 'hazel', :haircolor => 'dark brown'},
  {:name => 'Nathan',    :eyecolor => 'green', :haircolor => 'dirty blonde'},
  {:name => 'Charlotte', :eyecolor => 'blue',  :haircolor => 'light brown'}
]

filepath = File.expand_path("./people.csv")

FasterCSV.open(filepath, 'w') do |csv|
  # add header fields
  csv << %w[Name Eyes Hair]
  data.each do |person|
    csv << [person[:name], person[:eyecolor], person[:haircolor]]
  end
end

puts "\n\e[32m Wrote #{data.count} lines to #{filepath} \e[0m\n\n"