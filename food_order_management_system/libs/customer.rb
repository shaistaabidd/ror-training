class Customer
  
  attr_accessor :name, :cnic, :phone
  
  def initialize(name,cnic,phone)
    @name=name
    @cnic=cnic
    @phone=phone
  end
  
  def save_customer
    File.open("data/customer","a") do |file|
        file.write ((@name).to_s + "|")
        file.write ((@cnic).to_s+ "|")
        file.write ((@phone)+ "\n")
    end
    puts "**Customer Added Successfully**"
  end

end