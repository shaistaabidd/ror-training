#Create a function that takes a word and print it in given format: 
#ruby->["r", "ru", "rub","ruby"]

def spelling(string)
  i=1
  temp_arr=[]
  string.each_char do |c|
    temp_arr.push(string[0,i]) 
    i=i+1
  end	  
  temp_arr
end
print spelling("ruby")
