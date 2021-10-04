#Given an integer array, transform it into a mirror.
#Examples
#mirror([0, 2, 4, 6])   [0, 2, 4, 6, 4, 2, 0]

def mirror(a)
  a + a.reverse[1..a.length]
end
print mirror([0, 2, 4, 6])
