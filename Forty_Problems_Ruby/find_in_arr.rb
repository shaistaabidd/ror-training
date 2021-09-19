#Write a Ruby program to check whether a given array of integers of length 2 contains a 4 or a 7.
def check_array(nums)
    if(nums[0] == 4 || nums[0] == 7)
		return true
	end	
	return (nums[1] == 4 || nums[1] == 7)
end

print check_array([3, 5])