#Write a Ruby program to create an array of length 2 containing
#their middle elements from two given arrays of integers of length 3.
def check_array(nums)
    if(nums.length >= 2)
		return (nums[0] + nums[1])
	end
	if(nums.length == 1)
		return nums[0];
	end
	return 0;

end
print check_array([9, 8, 1]) 