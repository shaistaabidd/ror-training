#Write a Ruby program to check whether there is a 2 in the array with a 3 some
#where later in a given array of integers.

def check_array(nums)
   flag = false    
   i = 0
   while i < nums.length
       if(nums[i] == 2)
            flag = true
        end            
        if(flag && nums[i] == 3)
            return true
        end  
        i = i + 1
   end
   return false
end
print check_array([1, 9, 4, 7])