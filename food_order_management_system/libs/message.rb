require_relative '/home/shaista/ruby_projects/ror-training/food_order_management_system/libs/order.rb'
require_relative '/home/shaista/ruby_projects/ror-training/food_order_management_system/modules/validation.rb'
require 'date'
class Message
  attr_accessor :message
  def initialize(message)
    @message=message
    store_message
  end
  #def message(name)
  #  puts "Enter Message : "
  #  message=gets.chomp
  #  date=DateTime.now.strftime "%b %d,%Y "
    #print date.class
  #  str='[[ '+ name +'] : ' + date +']  ' + message
  #  store_message(str)
  #end
  def store_message
    File.open("/home/shaista/ruby_projects/ror-training/food_order_management_system/data/message","a") do |file|
      file.write ((@message)+ "\n")
    end
    puts "**Message Added Successfully**"
  end
  def get_data_from_file(file_path)
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
  def display_messages
    msgs=get_data_from_file("/home/shaista/ruby_projects/ror-training/food_order_management_system/data/message")
    msgs.reverse
  end
end