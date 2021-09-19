#Write a Ruby program to check whether a given array of integers contains 3 twice, or 5 twice. The array will be length 0, 1, or 2.
def check_array(nums)
    if(nums.length == 2)
        if(nums[0] == 3 && nums[1] == 3)
            return true
        else
		    return (nums[0] == 5 && nums[1] == 5)
		end
	    return false
	end
end
print check_array([5, 9])