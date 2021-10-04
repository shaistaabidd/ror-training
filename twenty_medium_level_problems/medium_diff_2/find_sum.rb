#Wirte a program that takes two numbers and return sum of all numbers lie between them
def find_sum(a,b)
  (a..b).inject { |sum, n| sum + n } 
end
print find_sum(5,10)
