#require_relative '/home/shaista/Documents/ruby_project/Railway_Reservation_System/libs/train.rb'
#require_relative '/home/shaista/Documents/ruby_project/Railway_Reservation_System/libs/seats.rb'
require_relative '/home/shaista/ruby_projects/ror-training/food_order_management_system/modules/message.rb'
include Message
class Order
  attr_accessor :order_id, :item, :qty, :price
  def initialize(order_id, item,qty,price)
    @order_id=order_id
    @item=item
    @qty =qty
    @price=price
    save_order
  end
  #def self.get_data_from_file(file_path)
  #  temp_arr=Array.new
  #  count=0
  #  arr=Array.new
  #  file_lines = File.readlines(file_path)
  #  file_lines.each do |line|
  #    temp_arr[count]=Array.new
  #    arr.push(line.strip)
  #    temp_arr[count].push(arr[count])
  #    count=count+1
  #  end
  #  temp_arr
  #end
  def self.employee_message
    message("EMP")
  end
  def save_order
    File.open("/home/shaista/ruby_projects/ror-training/food_order_management_system/data/order","a") do |file|
        file.write ((@order_id).to_s + "|")
        file.write ((@item)+ "|")
        file.write ((@qty).to_s + "|")
        file.write ((@price)+ "\n")
    end
    puts "**Order Added Successfully**"
  end
  def self.all_orders
    file_path="/home/shaista/ruby_projects/ror-training/food_order_management_system/data/order"
    get_data_from_file(file_path)
  end
  def self.save_order_status(id,status)
    File.open("/home/shaista/ruby_projects/ror-training/food_order_management_system/data/order_status","a") do |file|
        file.write ((id).to_s + "|")
        file.write ((status)+ "\n")
    end
    puts "**Status Added Successfully**"
  end
  def self.find_order(order_id)
    order=all_orders
    i=0
    temp_arr=order
    while i<order.length
      temp_index=order[i][0].index('|')
      temp_str= order[i][0]
      if temp_str[0..temp_index-1].to_i==order_id.to_i
          return i
      end
      i=i+1
    end
    return -1
  end
  def self.check_status(order_id)
    index=find_order(order_id)
    puts index
    path="/home/shaista/ruby_projects/ror-training/food_order_management_system/data/order_status"
    data=get_data_from_file(path) 
    print data[index]
  #self.status_update(@order_id)
  end
end