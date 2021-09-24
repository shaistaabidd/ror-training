def is_subset(arr1, arr2)
  (arr1 - arr2).empty?
end
print is_subset([1, 2], [3, 5, 9, 1])