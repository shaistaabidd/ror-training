#Total sales table sales_table as shown above.
#The name of a product product.
#... and returns the total sales if the product is on the array, otherwise return the string "Product not 
#found".
#Examples

#total_sales([
#  ["A", "B", "C"],
#  [ 2 ,  7 ,  1 ],
#  [ 3 ,  6 ,  6 ],
#  [ 4 ,  5 ,  5 ]
#], "A")   9➞
# 2 + 3 + 4 = 9

def total_sales(arr,name)
  index=arr[0].index(name)
  i=1
  sum=0
  while i<arr.length
    sum=sum+arr[i][0]
    i=i+1
  end
  sum
end
total_sales([
  ["A", "B", "C"],
  [ 2 ,  7 ,  1 ],
  [ 3 ,  6 ,  6 ],
  [ 4 ,  5 ,  5 ]
], "A")
