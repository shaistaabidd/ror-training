#Write a function which takes an array as input and return sum of all array elements after making it double.
#For example arr=[1,2,3,4,5,6,7,8,9,10]=>1*2 + 2*2 + 3*2 + 4*2 + 5*2 + 6*2 + 7*2 + 8*2 + 9*2 + 10*2=110
def compute_sum_of_doubles(arr)
  arr.sum {|v| v * 2 } 
end
print compute_sum_of_doubles(1..10)
