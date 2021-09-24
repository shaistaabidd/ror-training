require_relative '/home/shaista/ruby_projects/ror-training/food_order_management_system/libs/order.rb'
require_relative '/home/shaista/ruby_projects/ror-training/food_order_management_system/modules/message.rb'
require_relative '/home/shaista/ruby_projects/ror-training/food_order_management_system/modules/validation.rb'
include Message
include Validation
class KitchenManagement
  attr_accessor :status, :message
  def self.update_status(order_id,status)
    temp_status=Order.all_orders_status
    new_str=order_id.to_s+"|"+status 
    temp_status[Order.find_order(order_id,temp_status)][0]=new_str
    return temp_status
  end
  def self.set_status(order_id)
    if Order.find_order(order_id,Order.all_orders)!=-1
      if Order.find_order(order_id,Order.all_orders_status)!=-1
        puts "Enter Status update from given -> [New,Prepare,ready,Delay]"
        @status=gets.chomp
        @status=validate_data(@status)
        temp_status=update_status(order_id,@status)
        get_status=get_arr_data_in_string(temp_status)
        Order.destroy_status_data
        Order.store_updated_status(get_status)
      else
        puts "Enter Status update from given -> [New,Prepare,ready,Delay]"
        @status=gets.chomp
        @status=validate_data(@status)
        Order.save_order_status(order_id,@status)
      end
    else
      puts "No such Order Placed!!!"
    end
  end
  def self.management_message
    message("KM")
  end
end