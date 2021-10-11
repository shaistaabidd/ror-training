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
    puts get_all_orders
    puts "Total Price : #{total_price}"
  end
  
  def save_order
    File.open("data/order","a") do |file|
        file.write ((@order_id).to_s + "|")
        file.write ((@item).to_s+ "|")
        file.write ((@price)+ "\n")
    end
    puts "**Order Added Successfully**"
  end
  
  def self.is_exist(order_id)
    File.open('data/order_status', 'r+') do |f|   
      f.each do |line|
        if line[0..line.index('|')-1].to_i==order_id.to_i
          puts line[0..line.index('|')-1].to_i
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
  
  def save_order_status
    File.open("data/order_status","a") do |file|
        file.write ((@order_id).to_s + "|")
        file.write ((@status)+ "\n")
    end
    puts "**Status Added Successfully**"
  end
  
  def self.check_status(order_id)
    index=is_exist(order_id)
    if index==-1
      puts "No such Order Exists!!!"
    else
      puts order_id.to_s+"|"+@@status_hash[index[index.length-2]]
    end
  end
end