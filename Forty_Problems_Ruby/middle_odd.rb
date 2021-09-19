#Write a Ruby program to create a new array of length 3 containing the elements
#from the middle of a given array of integers of odd length (at least 3).

def check_array(nums)
    temp_arr = [];
	half = nums.length/2;
	temp_arr[0] = nums[half-1];
	temp_arr[1] = nums[half];
	temp_arr[2] = nums[half+1];
	return temp_arr;
end

print check_array([1, 3, 4])