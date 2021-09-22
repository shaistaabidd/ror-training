#Write a function which takes an array of positive integers and return it in given format:
#arr=[1,2,3,4,5]
#Output : [1, -1, 2, -2, 3, -3, 4, -4, 5, -5]
def int_values(arr)
  arr.flat_map { |e| [e, -e] }
end
print int_values([1,2,3,4,5]) 
