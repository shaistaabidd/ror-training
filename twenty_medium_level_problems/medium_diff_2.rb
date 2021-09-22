#Write a Ruby program which takes array of students and store it in hash according to roll no 1,2,3..
def arr_to_hash(arr)
  temp_hash = Hash.new
  arr.each_with_index { |item, index|
    temp_hash[index+1] = item
  }
  temp_hash
end
print arr_to_hash(["Ali","Ahmad","Saira"])


#Write a ruby program that checks whether an array contains float numbers or not
def check_float(arr)
  arr.none?(Float)
end
print check_float([1, 3.14, 42])


#Write a function which takes an array as input and return sum of all array elements after making it double.
#For example arr=[1,2,3,4,5,6,7,8,9,10]=>1*2 + 2*2 + 3*2 + 4*2 + 5*2 + 6*2 + 7*2 + 8*2 + 9*2 + 10*2=110
def compute_sum_of_doubles(arr)
  arr.sum {|v| v * 2 } 
end
print compute_sum_of_doubles(1..10)


#Create a function that takes number as an argument and returns
#it with its digits in descending order.
#Examplessort_descending(8457)->7548

def sort_descending(num)
  print (num.to_s.split("").sort.reverse.join).to_i
end
print sort_descending(8457)


#Write a ruby program that distributes given array of students into 3 equal parts
def distribute_arr(arr)
  arr.each_slice(3) { |a| p a } 
end
puts distribute_arr(["Hamza","Talha","Ayesha","Naila","Iqra","Ali","Ubaid"])


#Write a method in ruby that returns all the numbers of array that are divisible by given numbers
def divisible(arr,num)
  arr.find_all { |i|  i % num == 0 }
end
print divisible([1,2,3,4,5,6,7,8,9,10],3)


#Write a ruby program which takes an array of even and odd numbers, and returns two arrays
#first one contains even numbers and second one contains odd numbers
def even_odd(arr)
  arr.partition { |v| v.even? }
end

print even_odd([1,2,3,4,5,6,7,8,9])


#Write a program that will return index of array for a number divisible by both 5 and 7
def find_ind(arr)
  arr.find_index { |i| i % 5 == 0 && i % 7 == 0 } 
end
print find_ind(1..100)


#Wirte a program that takes two numbers and return sum of all numbers lie between them
def find_sum(a,b)
  (a..b).inject { |sum, n| sum + n } 
end
print find_sum(5,10)


#Write a function which takes an array of positive integers and return it in given format:
#arr=[1,2,3,4,5]
#Output : [1, -1, 2, -2, 3, -3, 4, -4, 5, -5]
def int_values(arr)
  arr.flat_map { |e| [e, -e] }
end
print int_values([1,2,3,4,5]) 


#Write a function which takes array marks of students and return marks of students
#greater than equal to 50
def get_marks(arr)
  arr.find_all {|a| a>50 }
end
print get_marks([60,46,52,23,18,87,98,33])



#Write a ruby program which takes a number as input and prints all prime numbers upto that number
def return_primes(num)
  require 'prime'
  temp_arr=Prime.entries num 
end
print return_primes(97)



#Write a ruby Program to find longest word
def longest_word(str)
  longest = str.inject do |memo, word|
    memo.length > word.length ? memo : word
  end
end
print longest_word(["Shaista","Abid"])  


#Write a ruby program to print multiples of given number upto 10

def multiples(num)
  temp_arr=(1..10).each_with_object([]) {|i,a| a<<i*num}
end
print multiples(6)




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


#Write a function that takes an array as input and remove all numbers which
#are divsible by given number
def remove_numbers(arr,n)
  arr.reject { |i|  i % n == 0 }
end
print remove_numbers((1..10),3)


#Write a ruby program to remove all Student data from file
def remove_file_data
  File.open('/home/shaista/ror-training/month-1/Twenty_Problems_Ruby/text_file', 'w') {|file| file.truncate(0) }
end
remove_file_data


#Create a function that takes a word and print it in given format: 
#ruby->["r", "ru", "rub","ruby"]

def spelling(string)
  i=1
  temp_arr=[]
  string.each_char do |c|
    temp_arr.push(string[0,i]) 
    i=i+1
  end	  
  temp_arr
end
print spelling("ruby")




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



#Create a function that converts A's to B's (downcase) in all occurences. Exampleswumbo("Ruby Challenges")
#"Ruby Chbllenges"

def wumbo(string)
  string.each_char do |c|
      if c.upcase=='A'
          string[string.index(c)]='b'
      end
  end
  string
end
print wumbo("Ruby Challenges")