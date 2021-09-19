#Write a Ruby program to compute the sum of the first 2 elements of a given array of
#integers. If the array length is less than 2, just sum up the elements that exist,
#returning 0 if the length of the array is 0.

def check_array(nums)
    if(nums.length >= 2)
		return (nums[0] + nums[1])
	end
	if(nums.length == 1)
		return nums[0];
	end
	return 0;

end
print check_array([8, 4, 5])