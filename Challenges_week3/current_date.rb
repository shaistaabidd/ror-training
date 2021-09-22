
#Write a Ruby program to display the current date and time.

#Sample Output:
#Current Date and Time: 27/12/2017 06:04
require 'date'
date_time = DateTime.now
date_now=date_time.strftime "%d/%m/%Y"
time_now=date_time.strftime " %H:%M"
#cdt = current_time.strftime "%d/%m/%Y %H:%M"
puts "Current Date: " +date_now
puts "Current Time : "+time_now
