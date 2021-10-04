#Create a function that takes an array arr and a number n and returns an array of two integers from 
#arr whose product equals n.
#Examples

#two_product([1, 2, -1, 4, 5], 20)   [4, 5]

def two_product(arr,num)
  i=0
  while i<arr.length
    j=1
    while j<arr.length
      if arr[i]*arr[j]==num
        return arr[i],arr[j]
      end
      j=j+1
    end
    i=i+1
  end
end
print two_product([1, 5, -1, 4], 20) 