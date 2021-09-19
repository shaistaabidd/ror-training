#Write a Ruby program to create a new array using first three elements of a given array of integers. If the length of the given array is less than three return the original array.

def check_array(nums)
    front = []
	if nums.length >= 3
		front[0] = nums[0]
		front[1] = nums[1]
		front[2] = nums[2]
	elsif nums.length == 2
		front[0] = nums[0]
		front[1] = nums[1]
	else nums.length == 1
	    front[0] = nums[0]
	end
	return front
end

print check_array([1, 3, 4, 5])