#require_relative '/home/shaista/Documents/ruby_project/Railway_Reservation_System/libs/train.rb'
#require_relative '/home/shaista/Documents/ruby_project/Railway_Reservation_System/libs/seats.rb'
require_relative '/home/shaista/ruby_projects/ror-training/food_order_management_system/modules/message.rb'
require_relative '/home/shaista/ruby_projects/ror-training/food_order_management_system/modules/validation.rb'
include Message
include Validation
class Order
  attr_accessor :order_id, :item, :price
  def initialize(item,price)
    @order_id=rand(1..10000)
    @item=item
    @price=price
    save_order
  end
  def self.get_data_from_file(file_path)
    temp_arr=Array.new
    count=0
    arr=Array.new
    file_lines = File.readlines(file_path)
    file_lines.each do |line|
      temp_arr[count]=Array.new
      arr.push(line.strip)
      temp_arr[count].push(arr[count])
      count=count+1
    end
    temp_arr
  end
  def self.total_price
    order=all_orders
    i=0
    total=0
    while i< order.length
      total=total+order[i][0][order[i][0].rindex('|')+1..order[i][0].length].to_i
      i=i+1
    end
    total
  end
  def self.display_history
    puts get_arr_data_in_string(all_orders)
    puts "Total Price : #{total_price}"
  end
  def self.employee_message
    message("EMP")
  end
  def save_order
    File.open("/home/shaista/ruby_projects/ror-training/food_order_management_system/data/order","a") do |file|
        file.write ((@order_id).to_s + "|")
        file.write ((@item).to_s+ "|")
        file.write ((@price)+ "\n")
    end
    puts "**Order Added Successfully**"
  end
  def self.all_orders
    file_path="/home/shaista/ruby_projects/ror-training/food_order_management_system/data/order"
    get_data_from_file(file_path)
  end
  def self.all_orders_status
    file_path="/home/shaista/ruby_projects/ror-training/food_order_management_system/data/order_status"
    get_data_from_file(file_path)
  end
  def self.save_order_status(id,status)
    File.open("/home/shaista/ruby_projects/ror-training/food_order_management_system/data/order_status","a") do |file|
        file.write ((id).to_s + "|")
        file.write ((status)+ "\n")
    end
    puts "**Status Added Successfully**"
  end
  def self.find_order(order_id,order)
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
  def self.store_updated_status(temp_str)
    File.open("/home/shaista/ruby_projects/ror-training/food_order_management_system/data/order_status","a") do |file|
        file.write (temp_str)
    end
  end
  def self.destroy_status_data
    File.open('/home/shaista/ruby_projects/ror-training/food_order_management_system/data/order_status', 'w') {|file| file.truncate(0) }
  end
  def self.check_status(order_id)
    index=find_order(order_id,all_orders_status)
    if index==-1
      puts "No Order Status is set"
    else
      path="/home/shaista/ruby_projects/ror-training/food_order_management_system/data/order_status"
      data=get_data_from_file(path) 
      data[index]
    end
  end
end