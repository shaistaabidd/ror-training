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
    def self.total_seats
        @@seats_weely[Date.today.strftime("%a")]
    end
    
    def self.set_seats_of_each_train(total_trains,seat_of_each_train)
        seat_arr=[]
        i=0
        while i<total_trains
            seat_arr[i]=seat_of_each_train
            i=i+1
        end
        seat_arr
    end 
    def self.get_seat_info_in_string(temp_seat_arr)
        j=0
        temp_str=""
        while j<temp_seat_arr.length
            temp_str=temp_str+ temp_seat_arr[j][0]+"\n"
            j=j+1
        end
        temp_str
    end
    def self.destroy_seats_data
        File.open('/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/seats', 'w') {|file| file.truncate(0) }
    end
    def self.store_updated_seat(temp_str)
        File.open("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/seats","a") do |file|
            file.write (temp_str)
        end
    end
    def self.update_seat(train_name,seats)
        temp_seat=Seats.all_seats
        index=Train.find_train(train_name)
        if index!=-1
            new_seat=train_name+"|"+seats.to_s
            temp_seat[index][0]=new_seat
            temp_str=get_seat_info_in_string(temp_seat)
            destroy_seats_data
            store_updated_seat(temp_str)
        else
            puts "**Train Not Found**"
        end
    end
    def self.assign_seats
        temp_seats=seat_criteria
        temp_train=Train.all_trains
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
        destroy_seats_data
        store_updated_seat(my_str)
        my_str
    end
    def self.all_seats
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
    def self.seat_criteria
        train=Train.all_trains
        today_seats=total_seats()
        i=0
        total_trains=train.length
        seat_of_each_train= today_seats/total_trains
        seat_arr=set_seats_of_each_train(total_trains,seat_of_each_train)
        temp=today_seats-(seat_of_each_train*total_trains)
        j=0
        while j<temp
            seat_arr[j]=seat_arr[j]+1
            j=j+1
        end
        seat_arr
    end
end