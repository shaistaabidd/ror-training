#Write a Ruby program to check whether a given value appears everywhere in a given array.
#A value is "everywhere" in an array if it presents for every pair of adjacent elements in the array.

def check_array(nums)
   i = 0;
   val = 3
   while i < nums.length
       if(nums[i] != val && nums[i+1] != val)
			return false
		end	
	i = i + 1
   end
   return true
end
print check_array([3, 7, 3, 3])