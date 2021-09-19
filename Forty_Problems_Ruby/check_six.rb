#Write a Ruby program to check whether a given array of integers contains two 6's next to each other,
#or there are two 6's separated by one element, such as {6, 2, 6}.

def check_array(nums)
   i = 0;
   while i < nums.length
        if(nums[i] == 6)
    		if(nums[i+1] == 6)
				return true
			elsif(i < nums.length - 2 && nums[i+2] == 6)
				return true
			end	
	    end
	i = i + 1
   end
   return false
end
print check_array([5, 8, 2, 5])