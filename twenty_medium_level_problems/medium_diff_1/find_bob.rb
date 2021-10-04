#Write a function that searches an array of names (unsorted) for the name "Bob" and returns the 
#location in the array. If Bob is not in the array, return -1.
#Examples

#find_bob(["Jimmy", "Layla", "Bob"])   2➞
#find_bob(["Bob", "Layla", "Kaitlyn", "Patricia"])   0➞
#find_bob(["Jimmy", "Layla", "James"])   -1
def find_bob(arr)
  j=0
  name=["Bob"]
  arr.each do |i|
    if name.include? i 
      return j
    end
    j=j+1  
  end
  return -1
end
print find_bob(["Jimmy", "Layla", "Bob"])