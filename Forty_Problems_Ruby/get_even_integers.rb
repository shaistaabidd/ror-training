#Write a Ruby program to get the number of even integers in a given array.
def check_array(nums)
  count = 0    
  nums.each do |item|
    if((item % 2) == 0)
	count=count + 1
    end 
  end   
  return count
end
print check_array([2, 6, 8, 2]),"\n"