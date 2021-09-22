#Build a function that creates histograms. Every bar needs to be on a new line and its length 
#corresponds to the numbers in the array passed as an argument. The second argument of the 
#function represents the character that needs to be used.
#histogram(lst, char) -> str
#Examples

#histogram([1, 3, 4], "#")   "#\n###\n####"
def histogram(arr,ch)
  temp_arr=[]
  arr.each do |c|
    c.times {print ch} 
    print "\n"
  end	  
  temp_arr
end
print histogram([6, 2, 15, 3],"#")