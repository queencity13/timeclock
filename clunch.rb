#!/Users/charlotte/.rvm/rubies/ree-1.8.7-2010.02/bin/ruby

require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter  => "mysql2",
  :host     => "localhost",
  :username => "root",
  :password => "comet13",
  :database => "timeclock"
)

class Lunch < ActiveRecord::Base
end

name = ENV['name']
while name.blank?
  print "Please enter a name: "
  name = gets.strip
end





lunch = Lunch.where(["name = ? and punched_in_at is NULL", name]).first

if lunch.blank?
  lunch = Lunch.new
  lunch.punched_out_at = Time.now
  lunch.name = name
  lunch.save
  puts "#{lunch.name} punched out at: #{lunch.punched_out_at}"
else
  lunch.punched_in_at = Time.now
  lunch.save
  puts "#{lunch.name} punched in at: #{lunch.punched_in_at}. You were punched out for x mins."
end





