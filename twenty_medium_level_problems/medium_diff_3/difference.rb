# Create a function that takes four numbers and returns the difference between the highest and the lowest

def difference(*value)
  value.max - value.min
end
print difference(1, 5, 9 ,5) 