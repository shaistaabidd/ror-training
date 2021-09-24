require_relative 'libs/customer.rb'
require_relative 'libs/employee.rb'
require_relative 'libs/kitchen_management.rb'
require_relative 'libs/order.rb'
require_relative 'modules/portal.rb'
require_relative 'modules/message.rb'
require_relative 'modules/validation.rb'
include Portal
include Message
include Validation
def user_name_password
  puts "Enter Username : "
  uname=gets.chomp
  uname=validate_data(uname)
  puts "Enter Password : "
  pwd=gets.chomp
  pwd=validate_data(pwd)
end
display_portal 
user_input=gets.chomp
if user_input.to_i==1
  user_name_password
  display_employee_dashboard
  user_response=gets.chomp
  if user_response.to_i==1
    puts "Enter orderd details : "
    item=gets.chomp
    item=validate_data(item)
    puts "Enter Price : "
    price=gets.chomp
    price=validate_data(price)
    price=criteria(price)
    order=Order.new(item,price)
  elsif user_response.to_i==2
    orders=Order.all_orders
    puts orders
    puts "Enter Order id for which you wanna Update Order Status"
    order_id=gets.chomp
    order_id=validate_data(order_id)
    order_id=criteria(order_id)
    print Order.check_status(order_id)  
  elsif user_response.to_i==3
    Order.employee_message
  elsif user_response.to_i==4
    Order.display_history
  else
    exit
  end
elsif user_input.to_i==2
  user_name_password
  display_kitchen_management_dashboard
  user_response=gets.chomp
  if user_response.to_i==1
    orders=Order.all_orders
    puts orders
    puts "Enter Order id for which you wanna Update Order Status"
    order_id=gets.chomp
    order_id=validate_data(order_id)
    order_id=criteria(order_id)
    KitchenManagement.set_status(order_id)
  elsif user_response.to_i==2
    KitchenManagement.management_message
  else
    exit
  end
end