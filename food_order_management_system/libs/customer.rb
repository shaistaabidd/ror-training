class Customer
  attr_accessor :name, :cnic, :phone
  def initialize(name,cnic,phone)
    @name=name
    @cnic=cnic
    @phone=phone
    save_customer
  end
  def save_customer
    File.open("/home/shaista/ruby_projects/ror-training/food_order_management_system/data/customer","a") do |file|
        file.write ((@name).to_s + "|")
        file.write ((@cnic).to_s+ "|")
        file.write ((@phone)+ "\n")
    end
    puts "**Customer Added Successfully**"
  end
end