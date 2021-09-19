#Write a Ruby program to check whether 7 appears as either the first or last element in a given array. The array length must be 1 or more.
def check_array(nums)
    return (nums[0] == 7 || nums[nums.length-1] == 7)
end
print check_array([4, 6, 8, 7]),"\n"
print check_array([7, 5, 1, 3]),"\n"
print check_array([14, 2, 6, 7, 8])