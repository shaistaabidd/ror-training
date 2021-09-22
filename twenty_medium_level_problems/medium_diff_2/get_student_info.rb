#Write a function that reads student details from file and display on screen
def get_student_info
  temp_arr=Array.new
  count=0
  arr=Array.new
  file_lines = File.readlines("/home/shaista/ror-training/month-1/Twenty_Problems_Ruby/text_file")
  file_lines.each do |line|
      temp_arr[count]=Array.new
      arr.push(line.strip)
      temp_arr[count].push(arr[count])
      count=count+1
  end
  temp_arr
end
print get_student_info