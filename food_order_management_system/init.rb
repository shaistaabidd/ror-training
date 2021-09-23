require_relative 'libs/customer.rb'
require_relative 'libs/employee.rb'
require_relative 'libs/kitchen_management.rb'
require_relative 'libs/order.rb'
require_relative 'modules/portal.rb'
require_relative 'modules/message.rb'
include Portal
include Message
display_portal 
user_input=gets.chomp
if user_input.to_i==1
  puts "Enter Username : "
  uname=gets.chomp
  puts "Enter Password : "
  pwd=gets.chomp
  puts "Enter orderd items : "
  item=gets.chomp
  puts "Enter Quantity : "
  qty=gets.chomp
  puts "Enter Price : "
  price=gets.chomp
  order_id=rand(1..10000)
  order=Order.new(order_id,item,qty,price)
  KitchenManagement.status_update(order.order_id)
  Order.check_status(order.order_id)
  KitchenManagement.management_message
  Order.employee_message
  print display_messages
else
  puts false
end