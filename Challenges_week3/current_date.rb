
#Write a Ruby program to display the current date and time.

#Sample Output:

#Current Date and Time: 27/12/2017 06:04

require 'date'
current_time = DateTime.now
cdt = current_time.strftime "%d/%m/%Y %H:%M"
puts "Current Date and Time: "+cdt
