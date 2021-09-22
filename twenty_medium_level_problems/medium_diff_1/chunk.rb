#Given an array and chunk size "n", create a function such that it divides the array into many 
#subarrays where each subarray is of length size "n".
#Examples
#chunk([1, 2, 3, 4], 2)   [➞
#[1, 2], [3, 4]
#]

#chunk([1, 2, 3, 4, 5, 6, 7], 3)   [➞
#[1, 2, 3], [4, 5, 6], [7]
#]
#chunk([1, 2, 3, 4 ,5], 10)   [➞
#[1, 2, 3, 4, 5]
def chunk(array, chunks)
	array.each_slice(chunks).to_a
end
print chunk([1, 2, 3, 4 ,5], 10)