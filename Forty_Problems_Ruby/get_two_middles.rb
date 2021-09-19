#Write a Ruby program to create a new array of length 2 containing the middle two
#elements from a given array of integers of even length 2 or more.

def check_array(nums)
    midArr = []
   	half = nums.length/2;
	midArr[0] = nums[half-1];
	midArr[1] = nums[half];
	return midArr;
end
print check_array([9, 6, 2, 1])