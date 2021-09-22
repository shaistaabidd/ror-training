#Write a ruby program that checks whether an array contains float numbers or not
def check_float(arr)
  arr.none?(Float)
end
print check_float([1, 3.14, 42])
