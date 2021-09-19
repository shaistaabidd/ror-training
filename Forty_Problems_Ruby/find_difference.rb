#Write a Ruby program to find the difference between the largest and smallest values of
#a given array of integers of length 1 or more.

def check_array(nums)
  max = nums[0]
  min = nums[0]
  nums.each do |item|
    if(item > max)
			max = item;
		elsif(item < min)
			min = item
    end 
   end    
  return (max-min)
end

print check_array([6, 3, 8, 1])