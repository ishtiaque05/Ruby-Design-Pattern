require 'rubygems'
require 'runt'

mondays = Runt::DIWeek.new(Runt::Monday)
wednesdays = Runt::DIWeek.new(Runt::Wednesday)
fridays = Runt::DIWeek.new(Runt::Friday)

is_friday = fridays.include?(Date.new(2018,03,9))

puts "9th march 2018 is_friday #{is_friday}"

nine_to_twelve = Runt::REDay.new(9, 0, 12, 0)
class_times = (mondays | wednesdays | fridays) & nine_to_twelve

puts "class times #{class_times}"
