#Write a ruby program to print multiples of given number upto 10

def multiples(num)
  temp_arr=(1..10).each_with_object([]) {|i,a| a<<i*num}
end
print multiples(6)

