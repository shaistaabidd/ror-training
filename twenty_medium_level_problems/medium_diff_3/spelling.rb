#Create a function which takes in a word and spells it out, by consecutively adding letters until the 
#full word is completed.
#Examples
#spelling("bee")   ["b", "be", "bee"]

def spelling(string)
    i=1
    temp_arr=[]
    string.each_char do |c|
    	temp_arr.push(string[0,i]) 
    	i=i+1
    end	  
    temp_arr
end
print spelling("happy")
