#Write Ruby program to check whether a string contains a substring or not
puts "Enter the string:"
str1=gets.chomp
puts "Enter the substring:"
substr1=gets.chomp

if str1.include? substr1
	puts "Yes"
else
	puts "No"
end