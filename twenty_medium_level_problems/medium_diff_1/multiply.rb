#Create a function that takes an array as an argument and returns a new nested array for each element
#in the original array. The nested array must be filled with the corresponding element (string or 
#number) in the original array and each nested array has the same amount of elements as the original 
#array.
#Examples
#multiply([4, 5])   [[4, 4], [5, 5]]

def multiply(arr)
  temp_arr=[]
  arr.each do |c|
    arr.length.times {temp_arr.push (c)} 
  end	  
  temp_arr.each_slice(arr.length).to_a
end
print multiply(["A", "B", "C", "D", "E"])