#Create a function that keeps only strings with repeating identical characters (in other words, it has a 
#set size of 1).
#Examples

#identical_filter(["aaaaaa", "bc", "d", "eeee", "xyz"])
#    ["aaaaaa", "d", "eeee"]➞
#identical_filter(["88", "999", "22", "545", "133"])
#    ["88", "999", "22"]➞
#identical_filter(["xxxxo", "oxo", "xox", "ooxxoo", "oxo"])
#    []
def identical_filter(array)
  i=0
  temp_arr=[]
  array.each do |a|
      if array[i].split("").all?{|a| a==(array[i][0])}
          temp_arr.push(array[i])
      end
      i=i+1
  end
  return temp_arr


end
print identical_filter(["aaaaaa", "bc", "d", "eeee", "xyz"])