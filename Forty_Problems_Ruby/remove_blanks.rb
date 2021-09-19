#Write a Ruby program to remove blank elements from a given array.

subjects = ["OOP", "DSA", "", "Web Dev", "Ruby"]
puts "Subjects : "
puts subjects
puts "\nAfter Removing Blank Elements :\n"
new_arr = subjects.reject { |c| c.empty? }
print new_arr 