class Order
  
  attr_accessor :order_id, :item, :price, :status
  @@status_hash = Hash["N" => "New", "P" => "Prepare","R" => "Ready","D" => "Delay"]
  
  def initialize(item,price)
    @order_id=rand(100)+1
    @item=item
    @status="N"
    @price=price
    save_order
  end
  
  def self.total_price
    order=get_all_orders
    total=0
    order.each do |order_price|
      total=total + order_price[0][order_price[0].rindex('|')+1..order_price[0].length].to_i
    end
    total
  end
  
  def self.display_history
    order=get_all_orders
    puts "\n\n\n********Orders History********"
    puts "\n\ID Name   Price\n\n"
    order.each do |order_price|
      
      print "#{order_price[0][0..order_price[0].index('|')-1]}" 
      print " #{order_price[0][order_price[0].index('|')+1..order_price[0].rindex('|')-1]}"
      print " #{order_price[0][order_price[0].rindex('|')+1..order_price[0].length].to_i}"
 
      puts "\n\n\n--------------------------------"
    end
    puts "Total Price : #{total_price}"
    puts "\n\n\n*******************************"
  end
  
  def save_order
    File.open("data/order","a") do |file|
        file.write ((@order_id).to_s + "|")
        file.write ((@item).to_s+ "|")
        file.write ((@price)+ "\n")
    end
    puts "**Order Added Successfully**"
  end
  
  def self.is_exist(order_id,order)
    File.open(order, 'r+') do |f|   
      f.each do |line|
        if line[0..line.index('|')-1].to_i==order_id.to_i
          return line
        end
      end
      return -1
    end
  end
  def self.get_all_orders
    temp_arr=Array.new
    count=0
    arr=Array.new
    file_lines = File.readlines("data/order")
    file_lines.each do |line|
      temp_arr[count]=Array.new
      arr.push(line.strip)
      temp_arr[count].push(arr[count])
      count=count+1
    end
    temp_arr
  end
  def self.display_order_details(order_id)
    index=is_exist(order_id,"data/order")
    puts "Order Item: #{index[index.index('|')+1..index.rindex('|')-1]}"
    puts "Order Price: #{index[index.rindex('|')+1..index.length]}"
 
  end
  def save_order_status
    File.open("data/order_status","a") do |file|
        file.write ((@order_id).to_s + "|")
        file.write ((@status)+ "\n")
    end
    puts "**Status Added Successfully**"
  end
  
  def self.check_status(order_id)
    index=is_exist(order_id,"data/order_status")
    if index==-1
      puts "No such Order Exists!!!"
    else
      puts "****Order Status****"
      puts "Order ID: #{order_id}"
      puts "Order Status: #{@@status_hash[index[index.length-2]]}" 
      display_order_details(order_id)
      
    end
  end

  def self.display_receipt(cust_details)
    puts "\n\n\n**************************"
    puts "*******Receipt********\n"
    puts "\n***Order Details Are***"
    puts "Customer Name: #{cust_details[0]}"
    puts "Customer Phone: #{cust_details[1]}"
    puts "Customer CNIC: #{cust_details[2]}"
    puts "Order Id: #{@order_id}"
    puts "Item: #{@item}"
    puts "Price: #{@price}"
    puts "Status: #{@status}"
    puts "\n**************************\n\n"
  end
end