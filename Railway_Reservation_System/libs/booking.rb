#!usr/bin/env ruby
require_relative '/home/shaista/Documents/ruby_project/Railway_Reservation_System/libs/customer.rb'
require_relative '/home/shaista/Documents/ruby_project/Railway_Reservation_System/libs/seats.rb'
class Booking
    attr_accessor :name,:phone,:cnic
    def add_customer(name,phone,cnic)
      File.open("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/customer","a") do |file|
          file.write ((name)+ "|")
          file.write ((phone)+ "|")
          file.write ((cnic)+ " \n")
      end
    end
    def book_seat(name,phone,cnic)
      trains=Train.new
      if trains.all_trains.length==0
        puts "Booking is not Successful because No Train is Added!!!\nAdd Train First!!"
      else
        puts "\n\n******All Available Trains Are******"
        train=trains.all_trains
        train.each {|t| puts t}
        puts "**********************\n\n"
        puts "Enter the Train Name you wanna Book : "
        train_name=gets.chomp
        i=0
        while i<train.length
          temp_index=train[i][0].index('|')
          temp_str= train[i][0]
          if temp_str[0..temp_index-1].upcase==train_name.upcase
            puts "Enter the Number of seats you wanna Book : "
            seats=gets.chomp
            seat=Seats.new
            available_seats=seat.total_seats()
            if available_seats-seats.to_i>1
              add_customer(name,phone,cnic)
              seat.seats_data(train_name,available_seats-seats.to_i)
              save_ticket(name,train[i][0])
              puts "****Booking Successful****"
            else
              puts "****Booking isn't Successful****"
            end
            break
          end
          i=i+1
        end
        if i==train.length
          puts "***No Such Train Exists***"
        end
      end
    end
    def all_customers
      temp_arr=Array.new
      count=0
      arr=Array.new
      file_lines = File.readlines("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/customer")
      file_lines.each do |line|
          temp_arr[count]=Array.new
          arr.push(line.strip)
          temp_arr[count].push(arr[count])
          count=count+1
      end
      temp_arr
  end
  def save_ticket(cust_name,train_data)
    File.open("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/tickets","a") do |file|
      file.write ((cust_name)+ "|")
      file.write ((train_data)+ " \n")
    end 
  end
  def display_total_tickets
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