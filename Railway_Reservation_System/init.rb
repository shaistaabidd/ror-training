#!usr/bin/env ruby
require_relative 'libs/booking.rb'
require_relative 'libs/train.rb'
require_relative 'libs/customer.rb'
require_relative 'libs/seats.rb'
require_relative 'modules/user_details_validation.rb'
include UserDetails

def menu
    puts "Press 1 -> Booking \n"
    puts "Press 2 -> Customer List \n"
    puts "Press 3 -> Add Train \n"
    puts "Press 4 -> Display Total Tickets \n"
    puts "Press 5 -> Add Routes \n"
    puts "Press 6 -> Assign Seats \n"
    puts "Press 7 -> Exit \n"
end

menu
inp_num=gets.chomp
flag=true
while flag
    if (inp_num.to_i ==1 || inp_num.to_i==2 || inp_num.to_i==3 || inp_num.to_i==4 || inp_num.to_i==5 || inp_num.to_i==6 || inp_num.to_i==7)
        if inp_num.to_i==1
            
            puts "Enter Customer Name : "
            cust_name=gets.chomp
            cust_name=validate_data(cust_name)
            puts "Enter Customer Phone# : "
            cust_phone=gets.chomp
            cust_phone=validate_data(cust_phone)
            cust_phone=user_details(cust_phone)
            puts "Enter Customer CNIC : "
            cust_cnic=gets.chomp
            cust_cnic=validate_data(cust_cnic)
            cust_cnic=user_details(cust_cnic)
            booking=Booking.new(cust_name,cust_phone,cust_cnic)
        elsif inp_num.to_i==2
            print Customer.all_customers
        elsif inp_num.to_i==3
            puts "Enter Train Name : "
            train_name=gets.chomp
            train_name=validate_data(train_name)
            puts "Enter From : "
            from=gets.chomp
            from=validate_data(from)
            puts "Enter To : "
            to=gets.chomp
            to=validate_data(to)
            #seat=Seats.new
            #available_seats=seat.total_seats()
            train=Train.new(train_name,from,to)
            #train.all_trains
        elsif inp_num.to_i==4
            puts "Display Total Tickets"
            puts Booking.display_total_tickets
        elsif inp_num.to_i==5
            puts "\n\n******All Available Trains Are******"
            trains=Train.all_trains
            trains.each {|t| puts t}
            puts "**********************\n\n"
            puts "Enter Train Name For which You wanna Add route : "
            train_name=gets.chomp
            train_name=validate_data(train_name)
            puts "Enter From : "
            from=gets.chomp
            from=validate_data(from)
            puts "Enter To : "
            to=gets.chomp
            to=validate_data(to)
            Train.update_route(train_name,from,to)
        elsif inp_num.to_i==6
            puts "Assign Seats"
            print Seats.assign_seats
        end
        flag=false
    else
        menu
        inp_num=gets.chomp
        flag=true
    end
end
