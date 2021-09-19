#Write a Ruby program to remove duplicate elements from a given array

nums = [1, 2, 3, 4, 1, 2, 2, 3, 5, 6]
puts "Original Array:\n"
print nums
puts "\nUnique Array:"
new_nums = nums.uniq
print new_nums