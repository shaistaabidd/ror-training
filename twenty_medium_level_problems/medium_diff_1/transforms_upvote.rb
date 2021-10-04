#Create a function that transforms a string of upvote counts into an array of numbers. Each k 
#represents a thousand.
#Examples

#transform_upvotes("6.8k 13.5k")   [6800, 13500]➞
#transform_upvotes("5.5k 8.9k 32")   [5500, 8900, 32]
def transform_upvotes(str)
  i=0
  temp_arr=[]
  str.split.each do |char|
    val=str.split[i].delete('k').to_f
    temp_arr.push((val*1000).to_i)
    i=i+1
  end
  temp_arr
end
print transform_upvotes("6.8k 13.5k")