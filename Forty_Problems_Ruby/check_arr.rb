#Write a Ruby program to check whether first and the last element are the same of a
#given array of integers. The array length must be 1 or more.
def check_array(nums)
    return (nums.length >= 1 && nums[0] ==  nums[nums.length-1])
end
print check_array([4, 2, 8])