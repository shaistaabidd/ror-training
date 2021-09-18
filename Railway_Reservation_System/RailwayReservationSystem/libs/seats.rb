require 'date'
require_relative '/home/shaista/Documents/ruby_project/Railway_Reservation_System/libs/train.rb'
require_relative '/home/shaista/Documents/ruby_project/Railway_Reservation_System/libs/booking.rb'
class Seats
    @@seats_weely={
        "Mon"=>21,
        "Tue"=>22,
        "Wed"=>23,
        "Thu"=>24,
        "Fri"=>25,
        "Sat"=>26,
        "Sun"=>27
    }
    def total_seats()
        @@seats_weely[Date.today.strftime("%a")]
    end
    def seats_data(train_name,seats)
        File.open("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/seats","a") do |file|
            file.write ((train_name)+ " | ")
            file.write ((seats.to_s)+ " \n")
        end
    end
    def set_seats(total_trains,seat_of_each_train)
        seat_arr=[]
        i=0
        while i<total_trains
            seat_arr[i]=seat_of_each_train
            i=i+1
        end
        seat_arr
    end 
    def update_seat(train_name,seats)
        seat=all_seats
        i=0
        flag=true
        temp_arr=seat
        seat=temp_arr
        while i<seat.length
            temp_index=seat[i][0].index('|')
            temp_str= seat[i][0]
            if temp_str[0..temp_index-1].upcase==train_name.upcase
                new_route_name=train_name+"|"+seats.to_s
                temp_arr[i][0]=new_route_name
                break
                flag=false
            end
            i=i+1
        end
        if i==seat.length && flag==true
            puts "***No Such Train Exists***"
        end
        temp_arr
        j=0
        temp_str=""
        while j<temp_arr.length
            temp_str=temp_str+ temp_arr[j][0]+"\n"
            j=j+1
        end
        File.open('/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/seats', 'w') {|file| file.truncate(0) }
        File.open("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/seats","a") do |file|
            file.write (temp_str)
        end
    end
    def store_seats
        temp_seats=seat_criteria
        train=Train.new
        temp_train=train.all_trains
        my_str=""
        i=0
        while i<temp_train.length
          temp_index=temp_train[i][0].index('|')
          temp_str= temp_train[i][0]
          train_name=temp_str[0..temp_index-1]
          train_seat=temp_seats[i].to_s
          my_str=my_str+train_name+"|"+train_seat+"\n"
          i=i+1
        end
        my_str
        File.open('/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/seats', 'w') {|file| file.truncate(0) }
        File.open("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/seats","a") do |file|
            file.write (my_str)
        end
    end
    def all_seats
        temp_arr=Array.new
        count=0
        arr=Array.new
        file_lines = File.readlines("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/seats")
        file_lines.each do |line|
            temp_arr[count]=Array.new
            arr.push(line.strip)
            temp_arr[count].push(arr[count])
            count=count+1
        end
        temp_arr
    end
    def seat_criteria
        trains=Train.new
        train=trains.all_trains
        today_seats=total_seats()
        i=0
        total_trains=train.length
        seat_of_each_train= today_seats/total_trains
        seat_arr=set_seats(total_trains,seat_of_each_train)
        temp=today_seats-(seat_of_each_train*total_trains)
        j=0
        while j<temp
            seat_arr[j]=seat_arr[j]+1
            j=j+1
        end
        seat_arr
    end
    def assign_seats
        seat_criteria
        print all_seats
    end
end