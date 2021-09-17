require 'date'
class Seats
    @@seats_criteria={
        "Mon"=>21,
        "Tue"=>22,
        "Wed"=>23,
        "Thu"=>24,
        "Fri"=>25,
        "Sat"=>26,
        "Sun"=>27
    }
    def total_seats()
        @@seats_criteria[Date.today.strftime("%a")]
    end
    def seats_data(train_name,seats)
        File.open("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/seats","a") do |file|
            file.write ((train_name)+ " | ")
            file.write ((seats.to_s)+ " \n")
        end
    end 
    
end