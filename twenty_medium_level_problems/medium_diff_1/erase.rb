#Suppose a hash # represents the BACKSPACE key being pressed. Write a function that transforms a
#string containing # into a string without any #.
#Examples

#erase("he##l#hel#llo")   "hello"➞
#erase("major# spar##ks")   "majo spks"➞
#erase("si###t boy")   "t boy"➞
#erase("####")
def erase(str)
  str.delete('#')
end
print erase("he##l#hel#llo")