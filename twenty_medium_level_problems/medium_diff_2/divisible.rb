#Write a method in ruby that returns all the numbers of array that are divisible by given numbers
def divisible(arr,num)
  arr.find_all { |i|  i % num == 0 }
end
print divisible([1,2,3,4,5,6,7,8,9,10],3)
