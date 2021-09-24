#Create a function that returns true if the first array is a subset of the second. Return false otherwise.
#Examples
#is_subset([3, 2, 5], [5, 3, 7, 9, 2])   true➞
#is_subset([8, 9], [7, 1, 9, 8, 4, 5, 6])   true➞
#is_subset([1, 2], [3, 5, 9, 1])   false

def is_subset(arr1, arr2)
  (arr1 - arr2).empty?
end
print is_subset([1, 2], [3, 5, 9, 1])