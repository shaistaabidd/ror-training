#Given an array of prices prices and a "supposed" total t, return true if there is a hidden fee added to 
#the total (i.e. the total is greater than the sum of prices), otherwise return false.
#Examples
#has_hidden_fee(["$2", "$4", "$1", "$8"], "$15")   false➞
#has_hidden_fee(["$1", "$2", "$3"], "$6")   false➞
#has_hidden_fee(["$1"], "$4")   true

def has_hidden_fee(arr,supposed_total)
  sum=0
  supposed_total=supposed_total[supposed_total.index('$')+1..supposed_total.length].to_i
  arr.each_with_index do |n,i|
    sum=sum+ arr[i][arr[i].index('$')+1..arr[i].length].to_i
  end
  supposed_total>sum ? :true : :false
end
print has_hidden_fee(["$1"], "$4")