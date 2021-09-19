#Write a Ruby program to check two given arrays of integers and test whether
#they have the same first element or they have the same last element. Both arrays length
#must be 1 or more.

def check_array(a, b)
    return (a[0] == b[0] || a[a.length-1] == b[b.length-1])
end
puts check_array([8, 1, 5], [6, 5])
puts check_array([7, 4, 2], [7, 1, 1]) 