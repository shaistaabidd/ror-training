#Write a function that takes an array of numbers and returns an array with two elements:
#The first element should be the sum of all even numbers in the array.
#The second element should be the sum of all odd numbers in the array.
#Example

#sum_odd_and_even([1, 2, 3, 4, 5, 6])   [12, 9]➞
# 2 + 4 + 6 = 12 and 1 + 3 + 5 = 9
#sum_odd_and_even([-1, -2, -3, -4, -5, -6])   [-12, -9])➞
#sum_odd_and_even([0, 0])   [0, 0])➞

def sum_odd_and_even(arr)
  arr=arr.partition { |v| v.even? }
  even_sum=arr[0].sum
  odd_sum=arr[1].sum
  return even_sum,odd_sum 
end
print sum_odd_and_even([-1, -2, -3, -4, -5, -6])