require_relative '/home/shaista/Documents/ruby_project/Railway_Reservation_System/libs/train.rb'
require_relative '/home/shaista/Documents/ruby_project/Railway_Reservation_System/libs/seats.rb'
class Train
    attr_accessor :train_name,:from,:to
    def set_train_details
        @@train_name=train_name
        @@from=from
        @@to=to
    end
    def assign_route(from,to)
        @@from=from
        @@to=to
    end
    def add_train(name,from,to)
        if (name=='' || from=='' || to=='')
            puts "**Train Not Inserted**"
        else 
            File.open("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/train","a") do |file|
                file.write ((name).to_s + "|")
                file.write ((from)+ "|")
                file.write ((to)+ "\n")
            end
            puts "**Train Added Successfully**"
        end
        seat=Seats.new
        seat.store_seats
    end
    def all_trains
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
    def add_routes(name,from,to)
        train=all_trains
        i=0
        flag=true
        temp_arr=train
        train=temp_arr
        while i<train.length
            temp_index=train[i][0].index('|')
            temp_str= train[i][0]
            if temp_str[0..temp_index-1].upcase==name.upcase
                new_route_name=name+"|"+from+"|"+to
                old_route_name=train[i][0]
                temp_arr[i][0]=new_route_name
                puts "**Route Added Successfully**"
                flag=false
                break
            end
            i=i+1
        end
        if i==train.length && flag==true
            puts "***No Such Train Exists***"
        end
        temp_arr
        j=0
        temp_str=""
        while j<temp_arr.length
            temp_str=temp_str+ temp_arr[j][0]+"\n"
            j=j+1
        end
        print temp_str
        File.open('/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/train', 'w') {|file| file.truncate(0) }
        File.open("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/train","a") do |file|
            file.write (temp_str)
            j=j+1
        end
    end
end