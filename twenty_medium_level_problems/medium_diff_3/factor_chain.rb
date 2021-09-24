#A factor chain is an array where each previous element is a factor of the next consecutive element. 
#The following is a factor chain:
#[3, 6, 12, 36]
# 3 is a factor of 6
# 6 is a factor of 12
# 12 is a factor of 36
#Create a function that determines whether or not an array is a factor chain.
#Examples
#factor_chain([1, 2, 4, 8, 16, 32])   true


def factor_chain(arr)
  divider=1
  arr.each do |n|
    if n%divider!=0
      return false
    end
    divider=n
  end
  return true
end
print factor_chain([2, 4, 6, 7, 12])