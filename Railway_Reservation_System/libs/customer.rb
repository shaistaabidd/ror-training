class Customer
    attr_accessor :name,:phone,:cnic
    def add_customer(name,phone,cnic)
        File.open("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/customer","a") do |file|
            file.write ((name)+ " | ")
            file.write ((phone)+ " | ")
            file.write ((cnic)+ " \n")
        end
    end    
end