#Write a Ruby program to split a delimited string into an array.
subjects = "OOP, DSA, Ruby, Python"
nums = "1, 3, 4, 5, 7"

sub_array = subjects.split(",")
nums_array = nums.split(",").map { |s| s.to_i }
print sub_array
print "\n"
print nums_array
