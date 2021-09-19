#Write a Ruby program to find the larger between the first and last elements of a given array of
#integers of length 3. Replace all the other values to be that value. Return the changed array.
def check_array(nums)
    max = []
   	max[0] = nums[0]
	if(nums[2] >= max[0])
		max[0] = nums[2]
    end
	max[1] = max[0]
	max[2] = max[0]
	return max
end
print check_array([1, 2, 3])