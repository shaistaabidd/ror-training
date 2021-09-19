#Write a Ruby program to compute the average values of a given array, except
#the largest and smallest values. The array length must be 3 or more.
def check_array(nums)
    min = nums[0]
    max = nums[0]
    sum = 0
    nums.each do |item|
      sum = sum + item
          if(item > max)
              max = item
          elsif(item < min)
              min = item
          end 
    end    
    return (sum-max-min).to_f/(nums.length - 2)
end  
print check_array([3, 4, 5, 6]),"\n"