#Ques 1

#Create a function that takes a string, checks if it has the same number of x's and o's and returns
#either true or false.


#def XO(string)
#	
#	if string.downcase.count('x')==string.downcase.count('o')
#		return true
#	else
#		return false	
#	end	
#end
#puts XO("zzoo")






#Ques 2

#Create a function that takes a string and returns a new string with its first and last characters swapped, except
#under three conditions:
#If the length of the string is less than two, return "Incompatible.".
#If the argument is not a string, return "Incompatible.".
#If the first and last characters are the same, return "Two's a pair.".



#def flip_end_chars(string)
#	if string.is_a?(Array)
#		return "Incompatible."
#	elsif string[0]==string[string.length-1] && string.length>=2
#		puts "Two's a pair."
#	elsif string.length>=2
#		#first=string[0]
#		#mid=string[1...string.length-1]
#		#last=string[string.length-1]
#		string[0],string[string.length-1]=string[string.length-1],string[0]
#		return string
#	else	
#		return "Incompatible."
#	end	
#end
#puts flip_end_chars([1, 2, 3])





#Ques 3

#Create a function that takes three integer arguments (a, b, c) and returns the amount of integers which are of
#equal value.


#def equal(a,b,c)
#	if a == b && a == c 
#		return 3
#	elsif a == b || a == c 
#		return 2
#	else
#		return 1
#	end	
#end	
#puts equal(3, 3, 5)





#Ques 4

#Convert an Integer to Binary

#puts 23.to_s(2)





#Ques 5

#A positive number's population is the sum of 1's in its binary representation.
#An evil number has an even numbered population.
#An odious number has an odd numbered population.
#A number is pernicious if its population is a prime number.
#Create a function that takes a number as an argument and returns a sorted array of all its descriptors ("Evil",
#"Odious", or "Pernicious").



#require 'prime'
#def how_bad(number)
#	array=[]
#	sum=((number.to_s(2)).to_i).digits.sum
#	if sum.prime?
#		array.push("Pernicious")
#	end	
#	if sum.even?
#		array.push("Evil")
#	end	
#	if sum.odd?
#		array.push("Odious")	
#	end
#	return array.sort		
#end	
#puts how_bad(17)







#Ques 6

#Given a string expression that can contain four types of brackets: () <> [] {}, create a function that returns
#true if the bracket logic is valid and false if it is not.



#def bracket_logic(string)
#  stack  = []
#  parens = {
#  "(" => ")",
#  "{" => "}",
#  "[" => "]"
#  }
#  open_parens = parens.keys
#  close_paren = parens.values
#  string.each_char do |ch|
#    if open_parens.include?(ch)
#      stack << ch
#    elsif close_paren.include?(ch)
#      if ch == parens[stack.last]
#         stack.pop 
#      else   
#         return false
#      end   
#    end
#  end

#  stack.empty?
#end

#puts bracket_logic("[ab(c/d<e-f+(7*6)>)+2]")







#Ques 7

#Given an array of ranges, Convert these ranges to arrays

#range=[*1..10,*11..20]
#puts range







#Ques 8


#Abigail and Benson are playing Rock, Paper, Scissors.
#Each game is represented by an array of length 2, where the first element represents what Abigail played and
#the second element represents what Benson played.
#Given a sequence of games, determine who wins the most number of matches. If they tie, output "Tie".
#• R stands for Rock
#• P stands for Paper
#• S stands for Scissors
#calculate_score([["R", "P"], ["R", "S"], ["S", "P"]]) ➞ "Abigail"



#def find_winner(game)
#    player0 = game[0]
#    player1 = game[1]
#    return 0 if player0 == player1
#    beats = {
#      'R': 'S',
#      'P': 'R',
#      'S': 'P'
#    }
#    if beats[player0.to_sym] == player1
#      return -1
#    else
#      return 1
#    end
#  end
  
  
#  def calculate_score(games)
#    return "Game is not Played" if games.empty?
#    result = 0
#    games.each do |game|
#      result += find_winner(game)
#    end
#    if result == 0
#      "TIE"
#    elsif result < 0
#      "Abigail"
#    else
#      "Benson"
#    end
#  end
#  
#  
#  puts calculate_score([["R", "P"], ["R", "S"], ["S", "P"]])








#Ques 9

#Create a function that returns the total number of jumps of frog to cross the river



#def jumping_frog(jumps)
#    jumps.inject {|sum, i|  sum + i }
#end
#puts jumping_frog([1, 5, 3, 1, 1, 1])








#Ques 10

#A long stretch of beach is represented by a string of two characters 0 - free, 1 - occupied. Due to recent
#restrictions, a new person cannot take place next to another. There has to be one free place between two
#people lounging on the beach. Create a function to compute how many new people at most can settle in on
#the given beach.
#Examples
#sun_loungers("10001") ➞ 1
# Can take place in the middle.



#def sun_loungers(string)
#	previous_value=string[0]
#	i=1
#	count=0
#	if string.length==1 && string[0]=='0'
#        		count=count+1
#        end		
#        while i<string.length
#        	
#        	if previous_value==string[i] && string[0]=='0'
#        		count=count+1
#        		previous_value='0'
#        		
#        	elsif previous_value==string[i] && previous_value=='1'
#        		"New person cannot take place next to another"
#        	elsif previous_value==string[i] && previous_value=='0'
#        		count=count+1
#        		previous_value='1'
#    		
#    		else
#         		previous_value=string[i]
#         	end
#         	i=i+1	
#         end		
#    	 count
#end
#puts sun_loungers("10001")







#Ques 11

#Given two strings hemisphere (can be "N" for the North hemisphere or "S" for the South hemisphere) and
#date (name and day of the month), implement a function that returns a string with the season name,
#accordingly to the above table.
#Examples
#hemisphere_season("N", "June, 30") ➞ "Summer"
#hemisphere_season("N", "March, 1") ➞ "Spring"
#hemisphere_season("S", "September, 22") ➞ "Spring"



#require 'date'
#def hemisphere_season(char, date)
#	hash={
#	1 => (Date.new(2021,3,1)..Date.new(2021,5,31)).map{ |date| date.strftime("%Y-%m-%d").split},
#	2 => (Date.new(2021,6,1)..Date.new(2021,8,31)).map{ |date| date.strftime("%Y-%m-%d").split},
#	3 => (Date.new(2021,9,1)..Date.new(2021,11,30)).map{ |date| date.strftime("%Y-%m-%d").split},
#	4 => (Date.new(2021,12,1)..Date.new(2021,2,28)).map{ |date| date.strftime("%Y-%m-%d").split}
#	}
#	
#	north_hemisphere=["Spring","Summer","Autumn","Winter"]
#	south_hemisphere=["Autumn","Winter","Spring","Summer"]
#	if char=='N'
#		if ( hash[1].include?(date)) 
#			return north_hemisphere[0]
#		elsif ( hash[2].include?(date))
#			return north_hemisphere[1]
#		elsif ( hash[3].include?(date))
#			return north_hemisphere[2]
#		elsif 	( hash[4].include?(date))
#			return north_hemisphere[3]
#		else
#			return -1
#		end
#	elsif char=='S'
#		if ( hash[1].include?(date)) 
#			return south_hemisphere[0]
#		elsif ( hash[2].include?(date))
#			return south_hemisphere[1]
#		elsif ( hash[3].include?(date))
#			return south_hemisphere[2]
#		elsif 	( hash[4].include?(date))
#			return south_hemisphere[3]
#		else
#			return -1
#		end
#	end
#				
#	#print hash[1].include?(date)
#	
#end
#puts hemisphere_season("S", Date.new(2021,4,5).strftime("%Y-%m-%d").split)









#Ques 12

#This challenge is an English twist on the Japanese word game Shiritori. The basic premise is to follow two
#rules:
#First character of next word must match last character of previous word.
#The word must not have already been said.
#Below is an example of a Shiritori game:
#["word", "dowry", "yodel", "leader", "righteous", "serpent"] # valid!


#class Shiritori
#	@@words
#	@@game_over
#	def initialize
#		@words=Array.new
#		@game_over=false	
#			
#	end
#	def play(word)
#        	current_word = word.downcase.strip
#        	if @words.length==0
#            		add_word(current_word)
#        	elsif((rule_one(current_word))==true && (rule_two(current_word))==false)
#            		add_word(current_word)
#        	else
#        		game_over=true
#            		return "Game Over!"
#        	end
#        end
#        def rule_one(current_word)
#        	lastWord = @words.last
#        	return (lastWord[-1] == current_word[0])
#            	
#        end 
#        def rule_two(current_word)
#        	return @words.include?(current_word)     
        
#        end
#    	def add_word(current_word)
#        	@words.append(current_word)
#        end
#        def restart()
#        	@words=[]
#        	@game_over=false
#        	return "Game restarted."
#        end		       
#end

#my_shiritori = Shiritori.new()
#my_shiritori.play("apple")
#my_shiritori.play("ear")
#puts my_shiritori.play("rhino")
#puts my_shiritori.play("corn")
#puts my_shiritori.restart()











#Ques 13

#In a board game, a piece may advance 1-6 tiles forward depending on the number rolled on a six-sided dice.
#If you advance your piece onto the same tile as another player's piece, both of you earn a bonus.
#Given you and your friend's tile number, create a function that returns if it's possible to earn a bonus when
#you roll the dice.Examples
#possible_bonus(3, 7) ➞ true



#def possible_bonus(a, b)
#  x = a;
#  6.times do |n|
#    x += 1;
#    if x === b
#      return true;
#    end 
#   end 
#  return false;
#end
#puts possible_bonus(3, 7) 
#puts possible_bonus(1, 9) 
#puts possible_bonus(5, 3) 









#Ques 14

#Write a function that transforms all letters from [a, m] to 0 and letters from [n, z] to 1 in a string.
#Examples
#convertBinary("house") ➞ "01110"
#convertBinary("excLAIM") ➞ "0100000"
#convertBinary("moon") ➞ "0111"


#def convertBinary(word)
#	hash={
#		"zero" => ('a'..'m').to_a,
#		"ones" => ('n'..'z').to_a	
#	}
#	new_word=''
#	word.each_char do |c|
#		if hash["zero"].include?(c.downcase)
#			new_word=new_word+'0'
#		elsif hash["ones"].include?(c.downcase)
#			new_word=new_word+'1'
#		else
#			new_word=new_word+c			
#		end	
#	end	
#	new_word
#end	
#puts convertBinary("moon")









#Ques 15


#Create a function that takes an array of numbers and returns the sum of the two lowest positive numbers.
#Examples
#sum_two_smallest_nums([19, 5, 42, 2, 77]) ➞ 7


#def sum_two_smallest_nums(numbers)
#  sorted = numbers.sort
#  count=0
#  i=1
#  sorted.each do |n|
#  	if n>=0 && i<=2
#  		count=count+n
#  		i=i+1
#  	end
#  end	
#  count	
#  #sorted[0] + sorted[1]
#end
#puts sum_two_smallest_nums([19, 5, 42, 2, 77])


#def sum_two_smallest_nums(a)
#  b = a.select{|x|x > 0}.sort
#  b[0]+b[1]
#end
#puts sum_two_smallest_nums([879, 953, 694, -847, 342, 221, -91, -723, 791, -587])







# Ques 16

#A group of friends have decided to start a secret society. The name will be the first letter of each of their
#names, sorted in alphabetical order.
#Create a function that takes in an array of names and returns the name of the secret society.
#Examples
#society_name(["Adam", "Sarah", "Malcolm"]) ➞ "AMS"


#def society_name(f)
#  f.map{|x|x[0][0]}.sort.join
#end
#print society_name(["Harry", "Newt", "Luna", "Cho"])








#Ques 17

#Create a function that validates whether a number n is within the bounds of lower and upper. Return false if n
#is not an integer.
#Examples
#intWithinBounds(3, 1, 9) ➞ true
#intWithinBounds(6, 1, 6) ➞ false
#intWithinBounds(4.5, 3, 8) ➞ false



#def intWithinBounds(n, a, b)
#  if (n == n.to_i) && (n >= a && n < b) 
#    return true;
#  end  
#   return false;
#end
#print intWithinBounds(3, 1, 9);
#print intWithinBounds(4.5, 3, 8);








#Ques 18


#Transcribe the given DNA strand into corresponding mRNA - a type of RNA, that will be formed from DNA
#after transcription. DNA has the bases A, T, G and C, while RNA converts to U, A, C and G respectively.
#Examples
#dnaToRna("ATTAGCGCGATATACGCGTAC") ➞ "UAAUCGCGCUAUAUGCGCAUG"
#dnaToRna("CGATATA") ➞ "GCUAUAU"
#dnaToRna("GTCATACGACGTA") ➞ "CAGUAUGCUGCAU"



#def dnaToRna(word)
#	new_word=''
#	word.each_char do |c|
#		if c.upcase=='A'
#			new_word=new_word+'U'
#		elsif c.upcase=='T'
#			new_word=new_word+'A'
#		elsif c.upcase=='G'
#			new_word=new_word+'C'
#		elsif c.upcase=='C'
#			new_word=new_word+'G'
#							
#		end	
#	end
#	new_word
#end	
#puts dnaToRna("ATTAGCGCGATATACGCGTAC")









#Ques 19


#Create a function that takes an array of button inputs and returns the final state.
#Examples
#likeOrDislike(["Dislike"]) ➞ "Dislike"
#likeOrDislike(["Like", "Like"]) ➞ "Nothing"
#likeOrDislike(["Dislike", "Like"]) ➞ "Like"
#likeOrDislike(["Like", "Dislike", "Dislike"]) ➞ "Nothing"

#def likeOrDislike(array)
#	i=0
#	while i<array.length-1
#		if array[i][0]==array[i+1][0]
#			return "Nothing"	
#		end	
#		i=i+1
#	end	
#	if array[array.length-1][0]=='D'
#		return "Dislike"
#	else
#		return "Like"		
#	end			
#end	
#print likeOrDislike(["Dislike", "Like"])








#Ques 20

#Create a function that takes a number as input and returns true if the sum of its digits has the same parity as
#the entire number. Otherwise, return false.
#Examples
#parityAnalysis(243) ➞ true
#// 243 is odd and so is 9 (2 + 4 + 3)


#def parityAnalysis(number)
#	if (number.digits.sum.even?)
#		if number.even?
#			return true
#		end
#	elsif (number.digits.sum.odd?)
#		if number.odd?
#			return true
#		end
#	end	
#	return false
#end	
#print parityAnalysis(243)









#Ques 21

#Create a function that determines whether a number is Oddish or Evenish. A number is Oddish if the sum of
#all of its digits is odd, and a number is Evenish if the sum of all of its digits is even. If a number is Oddish,
#return "Oddish". Otherwise, return "Evenish".


#def oddishOrEvenish(number)
#	if (number.digits.sum.even?)
#		return "Evenish"
#	else
#		return "Oddish"
#	end	
#end	
#print oddishOrEvenish(4433)









#Ques 22


#In each input array, every number repeats at least once, except for two. Write a function that returns the two
#unique numbers.
#Examples
#returnUnique([1, 9, 8, 8, 7, 6, 1, 6]) ➞ [9, 7]
#returnUnique([5, 5, 2, 4, 4, 4, 9, 9, 9, 1]) ➞ [2, 1]


#def returnUnique(array)
#	temp_arr=[]
#	array.each do |n|
#	 	if array.count(n)==1
#	 		temp_arr.push(n)
#	 	end	
#	end
#	temp_arr
#end
#print returnUnique([1, 9, 8, 8, 7, 6, 1, 6])








#Ques 23

#Given an array and chunk size "n", create a function such that it divides the array into many subarrays where
#each subarray is of length size "n".


#def chunk(array, chunks)
#	array.each_slice(chunks).to_a
#end
#print chunk([1, 2, 3, 4 ,5], 10)








#Ques 24


#Create a function that takes a string as an argument and returns an unencrypted string.

#def decodeMorse(string)
#
#	morseToDots= {
#
#	" " => " ", 
#	"A" => ".-", 
#	"B" => "-...", 
#	"C" => "-.-." ,
#	"D" => "-.." ,
#	"E" => "." ,
#	"F" => "..-." ,
#	"G" => "--." ,
#	"H" => "...." ,
#	"I" => ".." ,
#	"J" => ".---", 
#	"K" => "-.-" ,
#	"L" => ".-.." ,
#	"M" => "--" ,
#	"N" => "-." ,
#	"O" => "---" ,
#	"P" => ".--." ,
#	"Q" => "--.-" ,
#	"R" => ".-." ,
#	"S" => "..." ,
#	"T" => "-" ,
#	"U" => "..-", 
#	"V" => "...-", 
#	"W" => ".--" ,
#	"X" => "-..-" ,
#	"Y" => "-.--" ,
#	"Z" => "--.." ,
#	"1" => ".----" ,
#	"2" => "..---" ,
#	"3" => "...--" ,
#	"4" => "....-" ,
#	"5" => "....." ,
#	"6" => "-...." ,
#	"7" => "--..." ,
#	"8" => "---.." ,
#	"9" => "----." ,
#	"0" => "-----"
#	}	
#	morse = ""
#
#	for c in string.split("")
#
#	morse += morseToDots[ c.upcase ].to_s + " "
#	end
#	morse
#end
#print decodeMorse("this is morse code")











#Ques 25

#Create two functions: a left-shift function and a right-shift function. Each function will take in an array and a
#single parameter: the number of shifts.


#def left_shift(array, rot)
#	array.rotate(rot)
#end
#def right_shift(array, rot)
#	array.rotate(array.length-rot)
#end
#print left_shift([1, 2, 3, 4, 5], 5)
#print right_shift([1, 2, 3, 4, 5], 3)










#Ques 26


#Create a function that takes a string as an argument and returns a coded (h4ck3r 5p34k) version of the string.
#Examples
#hackerSpeak("javascript is cool") ➞ "j4v45cr1pt 15 c00l"
#hackerSpeak("programming is fun") ➞ "pr0gr4mm1ng 15 fun"
#hackerSpeak("become a coder") ➞ "b3c0m3 4 c0d3r"


#def hackerSpeak(word)
#	new_word=''
#	word.each_char do |c|
#		if c.downcase=='a'
#			new_word=new_word+'4'
#		elsif c.downcase=='e'
#			new_word=new_word+'3'
#		elsif c.downcase=='i'
#			new_word=new_word+'1'
#		elsif c.downcase=='o'
#			new_word=new_word+'0'
#		elsif c.downcase=='s'
#			new_word=new_word+'5'
#		else
#			new_word=new_word+ c						
#		end	
#	end
#	new_word
#end	
#print hackerSpeak("programming is fun")








#Ques 27

#Create a function that takes three collections of arguments and returns the sum of the product of numbers.
#Examples
#product(1,2)(1,1)(2,3) ➞ 8
#// 1 * 1 * 2 + 2 * 1 * 3



#def product(a,b,c)
#	(a[0]*b[0]*c[0])+(a[1]*b[1]*c[1])
#end
#print product([10,2],[5,0],[2,3])











#Ques 28



#Create a function that takes an array of values resistance that are connected in series, and calculates the total
#resistance of the circuit in ohms. The ohm is the standard unit of electrical resistance in the International
#System of Units ( SI ).
#Examples
#seriesResistance([1, 5, 6, 3]) ➞ "15 ohms"
#seriesResistance([16, 3.5, 6]) ➞ "25.5 ohms"



#def seriesResistance(array)
#	#array.inject{|sum,n| sum+n}
#	array.sum
#end
#print seriesResistance([1, 5, 6, 3])











#Ques 29


#Create a function that returns the number of hashes and pluses in a string.
#Examples
#hashPlusCount("###+") ➞ [3, 1]


#def hashPlusCount(string)
#	hash_count= string.count('#')
#	plus_count=string.count('+')
#	return hash_count,plus_count
#end
#print hashPlusCount("#+++#+#++#")










#Ques 30



#Given two strings, repeatedly cycle through all of the letters in the first string until it is the same length as the
#second string.
#Examples
#stringCycling("abc", "hello") ➞ "abcab"
#stringCycling("programming", "edabit") ➞ "progra"



#def stringCycling(first, second)
#	i=0
#	new_str=''
#	second.each_char do |c|
#		if (first.length<second.length)
#			#print second[second.length-1]
#			if i==first.length-1
#				i=-1	
#			end
#			new_str=new_str+first[i]
#		else
#			new_str=new_str+first[i]	
#		end
#		i=i+1	
#	end
#	new_str
#end		
#print stringCycling("to", "hide")











#Ques 31


#Create a function that returns a capitalized version of the string passed. The first letter of each word in the
#string should be capitalized while the rest of each word should be lowercase.
#Examples
#emphasise("hello world") ➞ "Hello World"
#emphasise("GOOD MORNING") ➞ "Good Morning"



#def emphasise(string)
#	string.split.map{|c| c.capitalize}.join(' ')
#	#string.split.map(&:capitalize).join(' ')
#end
#print emphasise("hello world")








#Ques 32


#Given two arguments, return an array which contains these two arguments.
#Examples
#make_pair(1, 2) ➞ [1, 2]
#make_pair(51, 21) ➞ [51, 21]



#def make_pair(a,b)
#	array=[a,b]
#end
#print make_pair(512124, 215)










#Ques 33



#Given an array and an integer n, return the sum of the first n numbers in the array.
#slice_sum([1, 3, 2], 2) ➞ 4
#slice_sum([4, 2, 5, 7], 4) ➞ 18



#def slice_sum(array, n)
#	(array.each_slice(n).to_a)[0].sum
#end
#print slice_sum([4, 2, 5, 7], 4)









#Ques 34

#Create a function that returns the sum of all even elements in a 2D matrix.
#Examples
#sum_of_evens([
#[1, 0, 2],
#[5, 5, 7],
#[9, 4, 3]]) ➞ 6



#def sum_of_evens(array)
#	array.flatten.select{|n| n%2==0}.sum
#end
#print sum_of_evens([[1, 0, 2],[5, 5, 7],[9, 4, 3]])








#Ques 35

#A value is omnipresent if it exists in every subarray inside the main array.
#To illustrate:
#[[3, 4], [8, 3, 2], [3], [9, 3], [5, 3], [4, 3]]
# 3 exists in every element inside this array, so is omnipresent.



#def is_omnipresent(array, n)
#
#	array.all?{|c| c.include?(n)}
#end
#print is_omnipresent([[1, 1], [1, 3], [5, 1], [6, 1]], 1)







#Ques 36


#Create a function that takes an integer and returns the factorial of that integer. That is, the integer multiplied by all positive lower #integers.



#def factorial(i)
#  [*1..i].inject{|mul,n| mul*n}
#end
#print factorial(6)





#Ques 37

#Create a function that uses an array, incrementing (+1) for each odd number and decrementing (-1) for each even number.

#def transform(a)
#  a.map{|x|x.odd? ? x+1 : x-1}
#end
#print transform([1,2,3,4,5])





#Ques 38

# Create a function that takes three numbers and returns the difference between the highest and the lowest


#def difference(*value)
#  value.max - value.min
#end
#print difference(1, 5, 9) 







#Ques 39

#Create a function that returns the number of days in that month.
#Example
#calculate_days(3, 2021) ➞ 31 

#require 'date'
#def calculate_days(month, year)
#  Date.new(year, month, -1).day
#end
#print calculate_days(3,2021)





#Ques 40


#Create a function that transform array it into a mirror.
#Example: transform([0, 1, 2, 3]) ➞ [0, 1, 2, 3, 2, 1, 0]

#def transform(a)
#  a + a.reverse[1..a.length]
#end
#print transform([3, 5, 6, 7, 8])






#Ques 41


#Create a function that convert seconds into hh-mm-ss and return the result

#require 'time'
#def seconds_to_hh_mm__ss(t)
#	Time.at(t).utc.strftime("%H:%M:%S")
#end
#print seconds_to_hh_mm__ss(128)




#Ques 42

#Create a function that converts hours to seconds and return result


#def hourse_to_seconds(h)
#	h*60*60
#end
#print hourse_to_seconds(12)






#Ques 43

#Create a function that takes age and return if you are eligible for vote or not 
#def vote(a)  
#	if a >= 18   
#  	puts "You are eligible to vote."   
#	else   
#  	puts "You are not eligible to vote."   
#	end
#end	  
#print vote(19)






#Ques 44

#Create a function that takes marks of student and return it's respective grade according to grading criteria 

#def grade(m)
#	if m <50   
#	  puts "Student is fail"   
#	elsif m >= 50 && m <= 60   
#  	  puts "Student gets D grade"   
#	elsif m >= 70 && m <= 80   
#  	 puts "Student gets B grade"   
#	elsif m >= 80 && m <= 90   
#  	 puts "Student gets A grade"    
#	elsif m >= 90 && m <= 100   
#  	 puts "Student gets A+ grade"    
#	end   
#end
#print grade(55)	







#Ques 45

#Create a function that takes temperature and return "Cool" if it is less than or equal to 15, "Normal" if between 27 and 15, otherwise "Hot"  


#def temperature(t)
#	if t<=15
#		"Cool"
#	elsif t>15 && t<27
#		"Normal"
#	else		
#		"Hot"
#	end
#end		
#print temperature(5)






#Ques 46

#Create a function that takes day and return the clear to wear according to it

#def color(day)
#	case day   
#	when "Tuesday"   
#  		'Wear Red or Orange'   
#	when "Wednesday"   
#  		'Wear Green'   
#	when "Thursday"   
#  		'Wear Yellow'   
# 	when "Friday"   
# 	 	'Wear White'   
# 	when "Saturday"   
# 		'Wear Black'   
#	else   
#  		"Wear Any color"   
#	end   
#end
#print color("Thursday")




#Ques 47

#Print the day on respective date

#require 'date'    
#d = Date.parse('4th Mar 2017')                
#print d.year                        
#print d.mon                         
#print d.mday  #we can also write only d.day                      
#print  d.wday                        
#print d += 1                        
#print d.strftime('%a %d %b %Y') # a->dayName d->dayDate, b->month in eng, y->year  




#Ques 48

#Given the date and time print time zones according to GMT, local and UTC timezones.

#puts Time.new          
#puts Time.new(2017, 3) 
#puts Time.local(2017, 2, 5)     
#puts Time.local(2017, 2, 5, 4, 30)     
#puts Time.utc(2017, 2, 5, 4, 30)    
#puts Time.gm(2017, 2, 5, 4, 30, 36)         






#Ques 49

# Given a date, print true if it's friday otherwise print false.Print date in Format: Friday 05 July 1991 and Friday 05 07 1991
 

#t = Time.new(1991, 07, 5, 9, 15, 33, "+09:00") 
#puts t.strftime("%a")  
#puts t.friday?  
#puts t.year    
#puts t.dst?  
#print t.strftime("%A %d %m %Y")   
#print t.strftime("%A %d %B %Y")   





#Ques 50  
# Given a date, check if it lies between given date ranges or not
#Example (2016,11,2) lies between 2015-2017? =>True
  
#t1 = Time.new(2017) #(2017,01,01)   
#t2 = Time.new(2015)  #(2017,01,01)  
  
#puts t1 == t2    
#puts t1 == t1   
#puts t1 <  t2   
#puts t1 >  t2   
  
#puts Time.new(2016,11,2).between?(t2, t1) 








#Ques 51

#Given range of 0 to 5, print max, min values of range. A value is rejected if it is greater than 3. Print rejected Values

#range = 0..5   
#ans = range.min   
#puts "Minimum value is #{ans}"   
  
#ans = range.max   
#puts "Maximum value is #{ans}"   
  
#ans = range.reject {|i| i <= 3 }   #ans = range.select{|x| x>3} 
#puts "Rejected values are #{ans}" 






#Ques 52 

#Given a budget
#	1. if budget lies in 100-1000, print Local
#	2. if budget lies in 1000-10000, print Titan
#	3. if budget lies in 5000-30000, print Fossil
#	4. if budget lies in 30000-100000, print Rolex
#	5. if budget is not in range, print No Stock

#budget = 50000   
  
#watch = case budget   
#   when 100..1000 then "Local"   
#   when 1000..10000 then "Titan"   
#   when 5000..30000 then "Fossil"   
#   when 30000..100000 then "Rolex"   
#   else "No stock"   
#end   
  
#puts watch   





#Ques 53

# print reverse of range

#range= (1..5)
#print range.to_a.reverse     




#Ques 54

#Given a string with '\n', print word before '\n'. If '\n' occurs, print next word in new line.
#Example  All\nthe\nwords=>All
#			    the
#			    words	


#"All\nthe\nwords\nare\nprinted\nin\na\nnew\line.".each_line do |line|   
#puts line   
#end  




#Ques 55

#Given a string and a number n. Print string to number n. 

#msg = "This tutorial is from JavaTpoint."   
#n=9   
#puts msg[0, 9] 
#or
#puts msg[0...9]  
  
  

  
  
  
  
#Ques 56

#Given a string ABCD. Print string in this format.   
#AB   
#ABC   
#ABCD   
  
  
#string ="ABCD"
#i=1
#string.each_char do |c|
#	puts string[0,i] 
#	i=i+1
#end	  







#Ques 57

#Given two strings, combine them to make new string 
#str_one = "I'm"   
#str_two = " a DEVELOPER!"   
#final_str= str_one+str_two   
#print final_str   




  
#Ques 58
#Convert Int to Binary

#number=16
#print number.to_s(2)





#Ques 59
#Convert Int to Octal

#number=16
#print number.to_s(8)





#Ques 60
#Convert Int to HexaDecimal

#number=16
#print number.to_s(16)





#Ques 61
#Given two integers, convert it into binary and apply AND Operator


#first=25
#second=30
#first.to_s(2)
#second.to_s(2)
#print (first & second).to_s(2)



#Ques 62
#Given two integers, convert it into binary and apply OR Operator


#first=25
#second=30
#first.to_s(2)
#second.to_s(2)
#print (first | second).to_s(2)





#Ques 63
#Given two integers, convert it into binary and apply OR Operator


#first=25
#second=30
#first.to_s(2)
#second.to_s(2)
#print (first | second).to_s(2)





#Ques 64
#(Starting from the right side)
#1st bit: View
#2nd bit: Edit
#3rd bit: Delete
#4th bit: Invite other users
#For example:

#0001 = Can only view the document.
#0010 = Can view and edit the document.
#0101 = Can view, can't edit, can't delete and can invite others.


#EDIT_PERMISSION_MASK = 0b0010
#VIEW_PERMISSION_MASK = 0b0001
#DELETE_PERMISSION_MASK = 0b0100
#def can_edit_document?(user_permisions)
#  (EDIT_PERMISSION_MASK & user_permisions) != 0
#end
#def can_view_document?(user_permisions)
#  (VIEW_PERMISSION_MASK & user_permisions) != 0
#end
#def can_delete_document?(user_permisions)
#  (DELETE_PERMISSION_MASK & user_permisions) != 0
#end

#print can_delete_document?(1101)




#Ques 65

#Check if two strings are equal or not
 
#s="Aba"
#t="aba"
#print s.casecmp(t)



#Ques 66
# Given the table below
# Flowers	Colors
# Rose		red
# Lily		purple
# Marigold	yellow
# Jasmine	white
#print flowers according to their colors

#color = {   
#    "Rose" => "red",   
#    "Lily" => "purple",   
#    "Marigold" => "yellow",   
#    "Jasmine" => "white"   
#  }   
  
#color.each { |key, value|   puts "#{key} color is #{value}"}




#Ques 67

#Given string, print square of numbers

#array = [1,2,3]
#print array.map { |n| n * 2 }




#Ques 68
#Given an array of strings, make every first character UPPERCASE.

#array = ["abc", "def", "ghi"]
#print array.map { |string| string.capitalize }






#Ques 69


#Create a function that takes a string and returns dashes on the left and right side of every vowel (a e i o u).
#Examples
#dashed("Edabit") ➞ "-E-d-a-b-i-t"

#def dashed(string)
#	vowels=['a','e','i','o','u']
#	new_str=''
#	string.each_char do |n|
#		if vowels.include?(n.downcase)
#			new_str=new_str+'-'+n+'-'
#		else
#			new_str=new_str+n
#		end
#	end	
#	new_str	
#end
#print dashed("Carpe Diem")








#Ques 69


#Check if Number is within a Given Range or not


#def is_in_range(n, r)
#  r.to_a.include?(n)
#end
#print is_in_range(4, (1..5))





#Ques 70

#Convert strings to integers and increment each value by one.

#array = ["11", "21", "5"]
#print array.map { |str| (str.to_i)+1 }






#Ques 71

#Convert hash values to symbols
#hash = { bacon: "protein", apple: "fruit" }
#print hash.map { |k,v| [k, v.to_sym]}.to_h






#Ques 72

#Display array values with their indexes

#array = %w(a b c)
#print array.map.with_index { |ch, idx| [ch, idx] }





#Ques 73

#For each array values, Display true if value greater than 10 otherwisse display false.
#b = [1, 4, 1, 1, 88, 9]
#OutPut:  [true, true, false, false, true, false]

#b = [1, 4, 1, 1, 88, 9]
#print b.map {|num| num > 10 }





#Ques 74

#For each array values, Display values which are greater than 10
#array=[22,4,3,12,9,43,1]
#print array.select { |n| n>10 }



#Ques 75
#Given Table
#Fruits	Price
#Apples	120
#Oranges	75
#Bananas	60
#print fruits whose price it greater than 70

#stock = {
#  apples: 120,
#  oranges: 75,
#  bananas: 60
#}
#print stock.select { |k, v| v>70 }
