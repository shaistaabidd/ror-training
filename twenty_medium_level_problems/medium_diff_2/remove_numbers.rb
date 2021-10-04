#Write a function that takes an array as input and remove all numbers which
#are divsible by given number
def remove_numbers(arr,n)
  arr.reject { |i|  i % n == 0 }
end
print remove_numbers((1..10),3)
