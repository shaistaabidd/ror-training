#Create a function that returns the product of all odd integers in an array.
#Examples

#odd_product([3, 4, 1, 1, 5])   15
def odd_product(arr)
  product=1
  arr.each do |a|
    if a.odd?
      product=product*a
    end
  end
  return product
end
print odd_product([5, 5, 8, 2, 4, 32])