#Write a function which takes array marks of students and return marks of students
#greater than equal to 50
def get_marks(arr)
  arr.find_all {|a| a>50 }
end
print get_marks([60,46,52,23,18,87,98,33])

