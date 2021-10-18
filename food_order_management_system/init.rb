require_relative 'libs/kitchen_management.rb'
require_relative 'libs/message.rb'
require_relative 'libs/order.rb'
require_relative 'libs/customer.rb'
require_relative 'modules/portal.rb'
require_relative 'modules/validation.rb'

require 'io/console'
require 'date'
include Portal
include Validation

menu_hash = Hash["Biryani" => 237, "Qorma" => 638, "Raita" => 30 ,"Salad" => 25]
status_hash = Hash["N" => "New", "P" => "Prepare","R" => "Ready","D" => "Delay"]
def validate_input(data)
  while not data.nil? and data.strip.empty?
    puts "Invalid Input!!! "
    puts "Enter Again : "
    data=gets.chomp
  end
  return data
end

def status_is_equal(st1, st2)
  st1[0].to_s == st2 ? true : false
end

def user_name_password
  puts "Enter Username : "
  uname=gets.chomp
  uname=validate_input(uname)
  puts "Enter Password : "
  pwd=STDIN.noecho(&:gets)
  pwd=validate_input(pwd)
  uname
end

def customer_details
  puts "Enter Customer Name : "
  name=gets.chomp
  name=validate_input(name)

  puts "Enter Customer CNIC : "
  cnic=gets.chomp
  cnic=validate_input(cnic)
  cnic=criteria(cnic)

  puts "Enter Phone Number : "
  phone=gets.chomp
  phone=validate_input(phone)
  phone=criteria(phone)

  return name,cnic,phone
end





def message_format(portal_name)
  puts "Enter Message : "
  message=gets.chomp
  message=validate_input(message)
  date=DateTime.now.strftime "%b %d,%Y "
  str='[['+ portal_name+ ' ] : ' + date +']  ' + message
end


def display_menu
  puts "***********Menu***********"
  puts "Biryani: 237"
  puts "Qorma : 638"
  puts "Raita : 30"
  puts "Salad : 25"
  puts "**************************"
end
def status_portal
  puts "Select any Status"
  puts "Press 'N' - New "
  puts "Press 'P' - Prepare"
  puts "Press 'R' - Ready"
  puts "Press 'D' - Delay"
end

display_portal 
user_input=gets.chomp
if (user_input).include? ('.')
  user_input=0
end
  


temp_order_id=0

if user_input.to_i==1
  puts "Please Enter Login Credentials!! "
  name=user_name_password
  puts "\n*******Login Successfull*******"
  puts "\n\n*******Welcome #{name}*******"

  flag=true
  while flag
    
    display_employee_dashboard
    user_response = gets.chomp
    
    if (user_response).include? ('.')
      user_response = 0
    end
    if user_response.to_i==1
      
      cust_details=customer_details
      display_menu
      puts "Select item from Menu: "
      item=gets.chomp

      item=validate_input(item)
      while !menu_hash.key?item.capitalize
        puts "Select item from Menu: "
        item=gets.chomp
      end

      price=menu_hash[item.capitalize].to_s


      order=Order.new(item,price)
      customer=Customer.new(cust_details[0],cust_details[1],cust_details[2])
      customer.save_customer
      order.save_order_status
      order.display_receipt(cust_details)
      
      temp_order_id=order.order_id
    elsif user_response.to_i==2
      

      orders=Order.get_all_orders
      puts orders
      
      puts "Enter Order id for which you wanna Check Order Status"
      order_id=gets.chomp
      temp_order_id=order_id
      order_id=validate_input(order_id)
      order_id=criteria(order_id)
      
      order_status=Order.check_status(order_id)
      #puts order_status.class
      #puts order_id.to_s+"|"+status_hash[order_status[order_status.length-2]]

    elsif user_response.to_i==3

      puts "Enter Order id for Message : "
      order_id=gets.chomp
      order_id=validate_input(order_id)
      order_id=criteria(order_id)
      
      str=message_format("EMP")
      message=Message.new(str,order_id.to_s)
      message.store_message

    elsif user_response.to_i==4
      
      Order.display_history
    
    else
      exit    
    end
  
  end

elsif user_input.to_i==2
  
  puts "Please Enter Login Credentials!! "
  name=user_name_password
  puts "\n*******Login Successfull*******"
  puts "\n\n*******Welcome #{name}*******"
  
  flag=true
  while flag
    display_kitchen_management_dashboard
    
    user_response=gets.chomp
    
    if (user_response).include? ('.')
      user_response=0
    end


    if user_response.to_i==1
      
      orders=Order.get_all_orders
      puts orders
      
      puts "Enter Order id for which you wanna Update Order Status"
      order_id=gets.chomp
      order_id=validate_input(order_id)
      order_id=criteria(order_id)
      index=Order.is_exist(order_id,"data/order_status")
      
      if index!=-1
        
        status_portal
        status=gets.chomp
        
        while status.upcase!='N' && status.upcase!='P' && status.upcase!='R' && status.upcase!='D'
          puts "Invalid Status. Enter Status Again"
          status=gets.chomp
        end
        #puts status_is_equal(index[index.index('|')+1..index.length].upcase, status.upcase)
        if status_is_equal(index[index.index('|')+1..index.length].upcase, status.upcase)
          puts "Status is already set to #{status_hash[status]}"
        else
          KitchenManagement.status_update(order_id,status,index)
        end
      else
        puts "No Such Order Exists!!!"
      end
    
    
    elsif user_response.to_i==2
      puts "Enter Order id for Message : "
      order_id=gets.chomp
      order_id=validate_input(order_id)
      order_id=criteria(order_id)
      
      str=message_format("KM")
      message=Message.new(str,order_id.to_s)
      message.store_message
    
    else
      #flag=false
      exit
    end
  end
end