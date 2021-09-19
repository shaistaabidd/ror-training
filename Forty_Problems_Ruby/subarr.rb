#Write a program which returns a subarray specified by range of indices.
def slice_arr(arr,a,b)
    arr.slice(a, b)
end
print slice_arr([1, 4, 1, 1, 88, 9], 2, 4)