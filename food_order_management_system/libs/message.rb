require 'date'
class Message
  
  attr_accessor :message,:order
  
  def initialize(message,order)
    @message=message
    @order=order
  end
  
  def store_message
    
    File.open("data/message","a") do |file|
      file.write ((@order))
      file.write ((@message)+ "\n")
    end
    
    puts "**Message Added Successfully**"
  end
  
  def retrieve_messages_from_file(file_path)
    
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
    
    msgs=retrieve_messages_from_file("data/message")
    msgs.reverse
  
  end

end