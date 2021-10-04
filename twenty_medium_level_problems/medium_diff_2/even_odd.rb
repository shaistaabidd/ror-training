#Write a ruby program which takes an array of even and odd numbers, and returns two arrays
#first one contains even numbers and second one contains odd numbers
def even_odd(arr)
  arr.partition { |v| v.even? }
end

print even_odd([1,2,3,4,5,6,7,8,9])