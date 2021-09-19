#Write a Ruby program to swap the first and last elements of a given array of integers,
#length will be at least 1. Return the modified array.

def check_array(nums)
    temp = nums[0];
	nums[0] = nums[nums.length-1];
	nums[nums.length-1] = temp;
	return nums;
end
print check_array([5,3])