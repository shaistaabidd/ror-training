# Create a function that takes three numbers and returns the difference between the first and the last element


def difference(*value)
  (value.first - value.last).abs
end
print difference(1, 5, 9) 