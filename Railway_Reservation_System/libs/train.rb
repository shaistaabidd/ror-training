require_relative '/home/shaista/Documents/ruby_project/Railway_Reservation_System/libs/train.rb'
require_relative '/home/shaista/Documents/ruby_project/Railway_Reservation_System/libs/seats.rb'
class Train
    attr_accessor :train_name,:from,:to
    def initialize(name,start,end_point)
      @train_name = name
      @from=start
      @to =end_point
      create_file_of_train
    end
    def create_file_of_train
        
        File.open("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/train","a") do |file|
            file.write ((@train_name).to_s + "|")
            file.write ((@from)+ "|")
            file.write ((@to)+ "\n")
        end
        puts "**Train Added Successfully**"
        #seat=Seats.new
        Seats.assign_seats
    end
    def self.display_all_trains
        puts "\n\n******All Available Trains Are******"
        train=Train.all_trains
        train.each {|t| puts t}
        puts "**********************\n\n"
    end
    def self.all_trains
        temp_arr=Array.new
        count=0
        arr=Array.new
        file_lines = File.readlines("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/train")
        file_lines.each do |line|
            temp_arr[count]=Array.new
            arr.push(line.strip)
            temp_arr[count].push(arr[count])
            count=count+1
        end
        temp_arr
    end
    def self.destroy_file_data
        File.open('/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/train', 'w') {|file| file.truncate(0) }
    end
    def self.find_train(train_name)
        train=all_trains
        i=0
        temp_arr=train
        while i<train.length
            temp_index=train[i][0].index('|')
            temp_str= train[i][0]
            if temp_str[0..temp_index-1].upcase==train_name.upcase
                return i
            end
            i=i+1
        end
        return -1
    end
    def self.get_routes_in_string(temp_arr)
        j=0
        temp_str=""
        while j<temp_arr.length
            temp_str=temp_str+ temp_arr[j][0]+"\n"
            j=j+1
        end
        temp_str
    end
    def self.update_route(name,from,to)
        temp_arr=all_trains
        index=find_train(name)
        if index!=-1
            new_route_name=name+"|"+from+"|"+to
            temp_arr[index][0]=new_route_name
            temp_str=get_routes_in_string(temp_arr)
            destroy_file_data
            File.open("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/train","a") do |file|
                file.write (temp_str)
            end
            puts "**Route Added Successfully**"
        else
            puts "***No Such Train Exists***"
        end
    end
end