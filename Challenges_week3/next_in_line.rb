#Write a function that takes an array and a number as arguments. Add the number to the end of the array,
#then remove the first element of the array. The function should then return the updated array.
#Examplesnext_in_line([5, 6, 7, 8, 9], 1)    [6, 7, 8, 9, 1]➞next_in_line([7, 6, 3, 23, 17], 10)   
#[6, 3, 23, 17, 10]➞next_in_line([1, 10, 20, 42 ], 6)    [10, 20, 42, 6]



def next_in_line(arr, n)
    if arr==[]
        return "No array has been selected"
    end
    arr=arr.rotate(1)
    arr[arr.index(arr.last)]=n
    print arr
end
print next_in_line([1, 10, 20, 42 ], 6)