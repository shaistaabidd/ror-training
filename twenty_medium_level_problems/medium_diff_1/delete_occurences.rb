#Create a function that takes two arguments: an array arr and a number num. If an element occurs in 
#arr more than num times, remove the extra occurrence(s) and return the result.
#Examples

#delete_occurrences([1, 1, 1, 1], 2)   [1, 1]➞
#delete_occurrences([13, true, 13, nil], 1)   [13, true, nil]➞
#delete_occurrences([true, true, true], 3)   [true, true, true]
def delete_occurrences(arr,n)
  temp_arr=[]
  arr.each do |e|
    if temp_arr.include?(e)
        
    else
      if arr.count(e)>n
        n.times{temp_arr.push(e)}
      else
        arr.count(e).times{temp_arr.push(e)}
      end
    end
  end
  print temp_arr
end
delete_occurrences([true, true, true], 3)