#Write a function that takes an array of elements and returns only the integers.
#Examplesreturn_only_integer([9, 2, "space", "car", "lion", 16])    
#[9, 2, 16]➞return_only_integer(["hello", 81, "basketball", 123, "fox"])    [81, 123]




def return_only_integer(arr)
   arr.select{|i| i.class==Integer} 
end
print return_only_integer([9, 2, "space", "car", "lion", 16])