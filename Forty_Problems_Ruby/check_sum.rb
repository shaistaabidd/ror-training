#Write a Ruby program to check whether the sum of all the 3's of an given array
#of integers is exactly 9.
def check_array(nums)
   sum = 0
   i = 0
   while i < nums.length
       if(nums[i] == 3)
			sum += 3
       end
    i += 1
   	end
   return (sum == 9);
end
print check_array([9, 7, 2, 1])