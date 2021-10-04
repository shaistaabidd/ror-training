#Write a ruby program that stores the Student info in file

def student_info(name,rollNo,subject,marks)  
  File.open("/home/shaista/ror-training/month-1/Twenty_Problems_Ruby/text_file","a") do |file|
    file.write ((name)+ " | ")
    file.write ((rollNo)+ " | ")
    file.write ((subject)+ " | ")
    file.write ((marks.to_s)+ " \n")
  end
end
puts "Enter Name : "
name=gets.chomp
puts "Enter Roll No : "
rollno=gets.chomp
puts "Enter Subject : "
subject=gets.chomp
puts "Enter Marks : "
marks=gets.chomp
student_info(name,rollno,subject,marks)