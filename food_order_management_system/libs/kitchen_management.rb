require_relative '/home/shaista/ruby_projects/ror-training/food_order_management_system/libs/order.rb'
require_relative '/home/shaista/ruby_projects/ror-training/food_order_management_system/modules/message.rb'
include Message
class KitchenManagement
  attr_accessor :status, :message
  def self.status_update(order_id)
    if Order.find_order(order_id)!=-1
      puts "Enter Status update from given -> [New,Prepare,ready,Delay]"
      @status=gets.chomp
      Order.save_order_status(order_id,@status)
    end
  end
  def self.management_message
    message("KM")
  end
end