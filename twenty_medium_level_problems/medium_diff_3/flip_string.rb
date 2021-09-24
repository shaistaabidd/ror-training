#Write a Ruby program to remove a flip string from a specified string.
#Example remove_flip("I love Programming", "Programming")
def remove_flip(my_string, substr)
  my_string.slice! (substr)
  return my_string
end
print remove_flip("I love Programming", "Programming")