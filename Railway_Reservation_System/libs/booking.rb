#!usr/bin/env ruby
require_relative '/home/shaista/Documents/ruby_project/Railway_Reservation_System/libs/customer.rb'
require_relative '/home/shaista/Documents/ruby_project/Railway_Reservation_System/libs/seats.rb'
require_relative '/home/shaista/Documents/ruby_project/Railway_Reservation_System/modules/user_details_validation.rb'
include UserDetails

class Booking
  attr_accessor :name,:phone,:cnic
  def initialize(cust_name,cust_phone,cust_cnic)
        @name = cust_name
        @phone=cust_phone
        @cnic =cust_cnic
        book_seat
  end
  def show_ticket(train)
    puts "*****************\n"
    puts @name
    puts @phone
    puts train
    puts "*****************\n"
  end
  def save_ticket(train_data) 
    File.open("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/tickets","a") do |file|
      file.write ((@name)+ "|")
      file.write ((train_data)+ " \n")
    end 
  end

  def book_seat
    if Train.all_trains.length==0
      puts "Booking is not Successful because No Train is Added!!!\nAdd Train First!!"
    else
      Train.display_all_trains
      train=Train.all_trains
      puts "Enter the Train Name you wanna Book : "
      train_name=gets.chomp
      train_name=validate_data(train_name)
      index=Train.find_train(train_name)
      if index!=-1
        puts "Enter the Number of seats you wanna Book : "
        inp_seats=gets.chomp
        inp_seats=validate_data(inp_seats)
        inp_seats=user_details(inp_seats)
        get_all_seats=Seats.all_seats
        get_index=get_all_seats[index][0].index('|')
        new_str= get_all_seats[index][0]
        available_seats= new_str[get_index+1..new_str.length-1]
        if available_seats.to_i-inp_seats.to_i>=0
          customer=Customer.new(@name,@phone,@cnic)
          #seat.seats_data(train_name,available_seats.to_i-seats.to_i)
          Seats.update_seat(train_name,available_seats.to_i-inp_seats.to_i)
          save_ticket(train[index][0])
          puts "****Booking Successful****"
          show_ticket(train[index][0])
        else
          puts "****Booking isn't Successful****"
        end
      end
    end
  end
  
  def self.display_total_tickets
    temp_arr=Array.new
    count=0
    arr=Array.new
    file_lines = File.readlines("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/tickets")
    file_lines.each do |line|
        temp_arr[count]=Array.new
        arr.push(line.strip)
        temp_arr[count].push(arr[count])
        count=count+1
    end
      temp_arr
  end
end
