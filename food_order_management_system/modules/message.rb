require 'date'
module Message
  def message(name)
    puts "Enter Message : "
    message=gets.chomp
    date=DateTime.now.strftime "%b %d,%Y "
    #print date.class
    str='[[ '+ name +'] : ' + date +']  ' + message
    store_message(str)
  end
  def store_message(str)
    File.open("/home/shaista/ruby_projects/ror-training/food_order_management_system/data/message","a") do |file|
      file.write ((str)+ "\n")
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
    msgs.sort
  end
end