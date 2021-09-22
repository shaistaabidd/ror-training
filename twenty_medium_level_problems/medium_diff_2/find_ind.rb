#Write a program that will return index of array for a number divisible by both 5 and 7
def find_ind(arr)
  arr.find_index { |i| i % 5 == 0 && i % 7 == 0 } 
end
print find_ind(1..100)
