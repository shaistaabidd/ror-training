class Customer
    attr_accessor :name,:phone,:cnic
    def initialize(cust_name,cust_phone,cust_cnic)
        @name = cust_name
        @phone=cust_phone
        @cnic =cust_cnic
        store_customer_data
    end
    def store_customer_data
        File.open("/home/shaista/Documents/ruby_project/Railway_Reservation_System/data/customer","a") do |file|
            file.write ((@name)+ " | ")
            file.write ((@phone)+ " | ")
            file.write ((@cnic)+ " \n")
        end
    end   
    def self.all_customers
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
end