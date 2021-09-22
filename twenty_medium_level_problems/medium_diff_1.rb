#Given an array and chunk size "n", create a function such that it divides the array into many 
#subarrays where each subarray is of length size "n".
#Examples
#chunk([1, 2, 3, 4], 2)   [➞
#[1, 2], [3, 4]
#]

#chunk([1, 2, 3, 4, 5, 6, 7], 3)   [➞
#[1, 2, 3], [4, 5, 6], [7]
#]
#chunk([1, 2, 3, 4 ,5], 10)   [➞
#[1, 2, 3, 4, 5]
def chunk(array, chunks)
	array.each_slice(chunks).to_a
end
print chunk([1, 2, 3, 4 ,5], 10)

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

#Suppose a hash # represents the BACKSPACE key being pressed. Write a function that transforms a
#string containing # into a string without any #.
#Examples

#erase("he##l#hel#llo")   "hello"➞
#erase("major# spar##ks")   "majo spks"➞
#erase("si###t boy")   "t boy"➞
#erase("####")
def erase(str)
  str.delete('#')
end
print erase("he##l#hel#llo")

#Write a function that searches an array of names (unsorted) for the name "Bob" and returns the 
#location in the array. If Bob is not in the array, return -1.
#Examples

#find_bob(["Jimmy", "Layla", "Bob"])   2➞
#find_bob(["Bob", "Layla", "Kaitlyn", "Patricia"])   0➞
#find_bob(["Jimmy", "Layla", "James"])   -1
def find_bob(arr)
  j=0
  name=["Bob"]
  arr.each do |i|
    if name.include? i 
      return j
    end
    j=j+1  
  end
  return -1
end
print find_bob(["Jimmy", "Layla", "Bob"])


#Create a function that takes a string as an argument and returns a coded (h4ck3r 5p34k) version of 
#the string.
#Examples

#hacker_speak("javascript is cool")   "j4v45cr1pt 15 c00l"
def hackerSpeak(word)
	new_word=''
	word.each_char do |c|
		if c.downcase=='a'
			new_word=new_word+'4'
		elsif c.downcase=='e'
			new_word=new_word+'3'
		elsif c.downcase=='i'
			new_word=new_word+'1'
		elsif c.downcase=='o'
			new_word=new_word+'0'
		elsif c.downcase=='s'
			new_word=new_word+'5'
		else
			new_word=new_word+ c						
		end	
	end
	new_word
end	
print hackerSpeak("programming is fun")

#Build a function that creates histograms. Every bar needs to be on a new line and its length 
#corresponds to the numbers in the array passed as an argument. The second argument of the 
#function represents the character that needs to be used.
#histogram(lst, char) -> str
#Examples

#histogram([1, 3, 4], "#")   "#\n###\n####"
def histogram(arr,ch)
  temp_arr=[]
  arr.each do |c|
    c.times {print ch} 
    print "\n"
  end	  
  temp_arr
end
print histogram([6, 2, 15, 3],"#")

#Create a function that takes time1 and time2 and return how many hours have passed between the 
#two times.
#Examples

#hours_passed("3:00 AM", "9:00 AM")   "6 hours"➞
#hours_passed("2:00 PM", "4:00 PM")   "2 hours"➞
#hours_passed("1:00 AM", "3:00 PM")   "14 hours"
def hours_passed(start_time, end_time)
  if start_time.split[1].upcase==end_time.split[1].upcase
    print end_time[0,end_time.split[0].index(':')].to_i-start_time[0,start_time.split[0].index(':')].to_i
  else
    print (12-start_time[0,start_time.split[0].index(':')].to_i)+(end_time[0,end_time.split[0].index(':')].to_i)
  end
end
hours_passed("3:00 AM", "1:00 PM")

#Create a function that keeps only strings with repeating identical characters (in other words, it has a 
#set size of 1).
#Examples

#identical_filter(["aaaaaa", "bc", "d", "eeee", "xyz"])
#    ["aaaaaa", "d", "eeee"]➞
#identical_filter(["88", "999", "22", "545", "133"])
#    ["88", "999", "22"]➞
#identical_filter(["xxxxo", "oxo", "xox", "ooxxoo", "oxo"])
#    []
def identical_filter(array)
  i=0
  temp_arr=[]
  array.each do |a|
      if array[i].split("").all?{|a| a==(array[i][0])}
          temp_arr.push(array[i])
      end
      i=i+1
  end
  return temp_arr


end
print identical_filter(["aaaaaa", "bc", "d", "eeee", "xyz"])

#Given two arguments, return an array which contains these two arguments.
#Examples

#make_pair(1, 2)   [1, 2]➞
#make_pair(51, 21)   [51, 21]➞
#make_pair(512124, 215)   [512124, 215]
def make_pair(a, b)
  return a,b
end 
print make_pair(1, 2) 

#Write a function that takes three arguments (x, y, z) and returns an array containing x subarrays (e.g.
#[[], [], []]), each containing y number of item z.
#x Number of subarrays contained within the main array.
#y Number of items contained within each subarray.
#z Item contained within each subarray.
#Examples

#matrix(3, 2, 3)   [[3, 3], [3, 3], [3, 3]]➞
#matrix(2, 1, "edabit")   [["edabit"], ["edabit"]]➞
#matrix(3, 2, 0)   [[0, 0], [0, 0], [0, 0]]

def matrix(a,b,c)
  temp_arr=[]
  print (a*b).times {temp_arr.push(c)}
  print "\n"  
  temp_arr.each_slice(b).to_a
end
print matrix(3, 2, 0)

#Given an integer array, transform it into a mirror.
#Examples
#mirror([0, 2, 4, 6])   [0, 2, 4, 6, 4, 2, 0]

def mirror(a)
  a + a.reverse[1..a.length]
end
print mirror([0, 2, 4, 6])

def multiply(arr)
  temp_arr=[]
  arr.each do |c|
    arr.length.times {temp_arr.push (c)} 
  end	  
  temp_arr.each_slice(arr.length).to_a
end
print multiply(["A", "B", "C", "D", "E"]) 

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

#In each input array, every number repeats at least once, except for two. Write a function that returns 
#the two unique numbers.
#Examples

#returnUnique([1, 9, 8, 8, 7, 6, 1, 6])   [9, 7]➞
#returnUnique([5, 5, 2, 4, 4, 4, 9, 9, 9, 1])   [2, 1]➞
#returnUnique([9, 5, 6, 8, 7, 7, 1, 1, 1, 1, 1, 9, 8])   [5, 6]
def returnUnique(array)
	temp_arr=[]
	array.each do |n|
	 	if array.count(n)==1
	 		temp_arr.push(n)
	 	end	
	end
	temp_arr
end
print returnUnique([1, 9, 8, 8, 7, 6, 1, 6])


#Given an array and an integer n, return the sum of the first n numbers in the array.
#Worked Example

#sum_first_n_nums([9, 8, 7, 6], 3)   24➞
# The parameter n is specified as 3.
# The first 3 numbers in the list are 9, 8 and 7.
# The sum of these 3 numbers is 24 (9 + 8 + 7).
# Return the answer.
#Examples
#slice_sum([1, 3, 2], 2)   4➞
#slice_sum([4, 2, 5, 7], 4)   18➞
#slice_sum([3, 6, 2], 0)   0
def slice_sum(arr, n)
  arr.each_slice(n).to_a[0].sum
end 
print slice_sum([1, 3, 2], 2) 

#Write a function that takes an array of numbers and returns an array with two elements:
#The first element should be the sum of all even numbers in the array.
#The second element should be the sum of all odd numbers in the array.
#Example

#sum_odd_and_even([1, 2, 3, 4, 5, 6])   [12, 9]➞
# 2 + 4 + 6 = 12 and 1 + 3 + 5 = 9
#sum_odd_and_even([-1, -2, -3, -4, -5, -6])   [-12, -9])➞
#sum_odd_and_even([0, 0])   [0, 0])➞

def sum_odd_and_even(arr)
  arr=arr.partition { |v| v.even? }
  even_sum=arr[0].sum
  odd_sum=arr[1].sum
  return even_sum,odd_sum 
end
print sum_odd_and_even([-1, -2, -3, -4, -5, -6])

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

#You are given an array of dates in the format Dec 11 and a month in the format Dec as arguments. 
#Each date represents a video that was uploaded on that day. Return the number of uploads for a 
#given month.
#Examples

#upload_count(["Sept 22", "Sept 21", "Oct 15"], "Sept")   2
def upload_count(arr, month)
  count=0
  arr.each do |char|
    if char.upcase.include? month.upcase
      count=count+1
    end
  end
  count
end
p upload_count(["Sept 22", "Sept 21", "Oct 15"], "Sept")