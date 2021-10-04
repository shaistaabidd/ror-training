#Create a function that takes number as an argument and returns
#it with its digits in descending order.
#Examplessort_descending(8457)->7548

def sort_descending(num)
  print (num.to_s.split("").sort.reverse.join).to_i
end
print sort_descending(8457)
