#Write a Ruby program to concatenate array of arrays into one.
#Original array:
#[10, 20, [30, [40, 50]]]
#Output array:
#[10, 20, 30, 40, 50]

nums = [ 10, 20, [30, [40, 50] ] ]
new_arr = nums.flatten
print "Array:"
print new_arr