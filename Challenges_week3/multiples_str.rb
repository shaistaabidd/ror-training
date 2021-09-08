#Write a Ruby program to create a new string which is n copies of a given string.

#Sample Output:
#n=5
#aaaaa


def multiple_string(str, n)
    return str*n
end
print multiple_string('a', 5),"\n"