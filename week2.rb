#Problem 1: Create a function that takes a string str and returns an array of two-paired characters. If the string has an odd number of characters, add an asterisk * in the final pair.See the below examples for a better understanding:Examplesstring_pairs("mubashir")    ["mu", "ba", "sh", "ir"]➞string_pairs("airforces")    ["ai", "rf", "or", "ce", "s*"]


def string_pairs(string)
    i=0
    arr=[];
    while(i<string.length-1)    
        arr.push(string[i]+string[i+1]);
        i=i+2
    end  
    if((string.length.odd?))
        arr.push("#{string.chars.last}*")
    end  
     arr
end    
print string_pairs("Kanwal")







#Problem 2: Create a function that alternates the case of the letters in a string (known as Spongecase).Examplesalternating_caps("Hello")    "HeLlO"➞alternating_caps("How are you?")    "HoW aRe YoU?"➞alternating_caps("OMG this website is awesome!")    "OmG tHiS wEbSiTe Is AwEsOmE!"➞NotesThe first letter should always be UPPERCASE.Ignore spaces.




def alternating_caps(string)
    i=0
    str=''
    while(i<string.length)    
        if i.even?
            str=str+string[i].upcase
        else
            str=str+string[i].downcase
        end    
        i=i+1
    end 
    str 
end    
print alternating_caps("OMG this website is awesome!")


#Problem 3:Write a function that takes an array and a number as arguments. Add the number to the end of the array, then remove the first element of the array. The function should then return the updated array.Examplesnext_in_line([5, 6, 7, 8, 9], 1)    [6, 7, 8, 9, 1]➞next_in_line([7, 6, 3, 23, 17], 10)    [6, 3, 23, 17, 10]➞next_in_line([1, 10, 20, 42 ], 6)    [10, 20, 42, 6]➞next_in_line([], 6)    "No array has been selected"




def next_in_line(arr,n)
    arr=(arr.push(n))
    arr.delete(arr.first)
    arr
end    
print next_in_line([7, 6, 3, 23, 17], 10)


#Problem 4:You will be given a collection of five cards (representing a player's hand in poker). If your hand contains at least one pair, return an array of two elements: true and the card number of the highest pair (trivial if there only exists a single pair). Else, return false.Exampleshighest_pair(["A", "A", "Q", "Q", "6" ])    [true, "A"]➞highest_pair(["J", "6", "3", "10", "8"])    false➞highest_pair(["K", "7", "3", "9", "3"])    [true, 3]




def highest_pair(array)
    array.each do |n|
        if array.count(n)>=2
            return true,n
        end 
    end
    return false       
end    
print highest_pair(["A", "A", "Q", "Q", "6" ])



#Problem 5:Given a sentence, create a function that replaces every "a" as an article with "an absolute". It shouldreturn the same string without any change if it doesn't have any "a".Examplesabsolute("I am a champion!!!")    "I am an absolute champion!!!"➞absolute("Such an amazing bowler.")    "Such an amazing bowler."➞absolute("A man with no haters.")    "An absolute man with no haters."






def absolute(array)
   temp_first=[]
   temp_last=[]  
   article=['a'] 
   array.split.each do |a|
        if article.include?(a.downcase)
            temp_last=array.split[(array.index(a))+1..array.length]
            temp_first=array.split[0...(array.index(a))].push("an").push("absolute")
            return ((temp_first+temp_last).join (' ')).capitalize
        end
    end 
    array 
end    
print absolute("I am a champion!!!")







#Problem 6: Given a list of lists, return a new array of arrays containing every element, except for the outer elements.Examplespeel_layer_off([["a", "b", "c", "d"],["e", "f", "g", "h"],["i", "j", "k", "l"],["m", "n", "o", "p"]])    [ ➞["f", "g"],["j", "k"]]




def peel_layer_off(array)
   i=1;
   temp_arr=[]
   temp_sub_arr=[]
   while i<array.length-1
        j=1
        while j<array[0].length-1
            temp_sub_arr.push(array[i][j])
            j=j+1
        end
        temp_arr.push(temp_sub_arr)
        temp_sub_arr=[]
        i=i+1
    end
    temp_arr
end    
print peel_layer_off([
    ["a", "b", "c", "d"],
    ["e", "f", "g", "h"],
    ["i", "j", "k", "l"],
    ["m", "n", "o", "p"]
  ])











#Problem 7: Write a function that takes an array and determines whether it's strictly increasing, strictly decreasing, or neither.Examplescheck([1, 2, 3])    "increasing"➞check([3, 2, 1])    "decreasing"➞check([1, 2, 1])    "neither"➞check([1, 1, 2])    "neither"

def check(array)
    array.each do |n|
        if array.count(n)>1
            return "Neither"
        end
    end
    if array.sort==array

        return "Increasing"
    elsif array.sort.reverse==array

        return "Decreasing"
    else
        return "Neither"     
    end       
end    
print check([1, 2, 1]) 






#Problem 8: Write a function that returns the longest sequence of consecutive zeroes in a binary string.Exampleslongest_zero("01100001011000")    "0000"➞longest_zero("100100100")    "00"➞longest_zero("11111")    ""



def longest_zero(string) 
    i=0
    count=0
    longest_count=0
    while i<string.length-1
        if (string[i]==string[i+1]) && (string[i]=='0')
            count=count+1
            if count>longest_count
                longest_count=count
            end
        else
            count=0
        end    
        
        i=i+1    
    end
    if string.count('0')==0
        return " "
    end
    return '0'*(longest_count+1)   

end
print longest_zero("01100001011000")








#Problem 9:Create a function that takes a string as an argument and convert the string with this order:msg_format(“Hello! I am new her.”)    “Hello! i aM nEw HERE.”➞msg_format(“you are getting is related to the fact”)    “You are gEtTiNg iS RELATED To the ➞fAcT”




def msg_format(string)
  i=0
  count=0
  str = ""
  new_str=string.split
  while i<new_str.length
      if count==0
        str << new_str[i].capitalize + " "
      elsif count==1
        str << new_str[i].downcase + " "
      elsif count==2 || count==3
        index=0
        temp=(new_str[i].to_s).split("")
        while index<temp.length
          if index.even?
          str << temp[index].downcase
          else
          str << temp[index].upcase
          end
          index=index+1
        end
        str << " "
      else
        index=0
        temp=(new_str[i].to_s).split("")
        str << temp.join.upcase + " "
        count=-1
      end
      i=i+1
      count=count+1
  end
  str[-1] = "\0"
  str
end
print msg_format('you are getting is related to the fact')









#Problem 10:Calculate how many days for happy new year day. Create a function named as days_left_for_new_year(Date.today) and return how many days are left.



require 'date'
def days_left_for_new_year(current_date)
    print (current_date...Date.new(current_date.year.next,01,01)).map{ |date| date.strftime("%Y-%m-%d").split}.to_a.size
end
print days_left_for_new_year(Date.today)









#Problem 11: Given an array of 10 numbers, return whether or not the array is shuffled sufficiently enough. In thiscase, if 3 or more numbers appear consecutively (ascending or descending), return false.Examplesis_shuffled_well([1, 2, 3, 5, 8, 6, 9, 10, 7, 4])    false➞# 1, 2, 3 appear consecutivelyis_shuffled_well([3, 5, 1, 9, 8, 7, 6, 4, 2, 10])    false➞# 9, 8, 7, 6 appear consecutivelyis_shuffled_well([1, 5, 3, 8, 10, 2, 7, 6, 4, 9])    true




def is_shuffled_well(array)
    asc_count=1
    desc_count=1
    i=0
    while i<array.length-1
        if array[i] == (array[i+1] - 1)
            asc_count=asc_count+1
            if asc_count==3
                return false
            end
        elsif array[i]==(array[i+1]+1)
            desc_count=desc_count+1
            if desc_count==3
                return false
            end    
        else
            asc_count=1
            desc_count=1
        end  
        i=i+1  
    end
    return true

end
print is_shuffled_well([1, 3, 5, 7, 9, 2, 4, 6, 8, 10]) 





#Problem 12:Write a function that returns the first n vowels of a string.Examplesfirst_n_vowels("sharpening skills", 3)    "aei"➞first_n_vowels("major league", 5)    "aoeau"➞first_n_vowels("hostess", 5)    "invalid"


def first_n_vowels(string,n)
    vowels=['a','e','i','o','u']
    temp_arr=[]
    string.each_char do |s|
        if vowels.include?(s)
            temp_arr.push(s)
        end    
    end    
    if temp_arr.count>=n
        temp_arr=temp_arr[0...n].join
        return temp_arr
    end
    return "invalid"

end
print first_n_vowels("hostess", 5)










#Problem 13:Create a function that takes a string of words and return a string sorted alphabetically by the last character of each word.Examplessort_by_last("herb camera dynamic")    "camera herb dynamic"➞sort_by_last("stab traction artist approach")    "stab approach traction artist"➞sort_by_last("sample partner autonomy swallow trend")    "trend sample partner swallow ➞autonomy"


def sort_by_last(string)
    string.split.sort_by { |word| word[-1] }.join" "
end
print sort_by_last("sample partner autonomy swallow trend") 


#Problem 14:Create a function that takes both a string and an array of integers as arguments. Rearrange the lettersin the string to be in the order specified by the index numbers. Return the "remixed" string.Examplesremix("abcd", [0, 3, 1, 2])    "acdb"➞The string you'll be returning will have: "a" at index 0, "b" at index 3, "c" at index 1, "d" at index 2, because the order of those characters maps to their corresponding numbers in the index array.remix("PlOt", [1, 3, 0, 2])    "OPtl"➞remix("computer", [0, 2, 1, 5, 3, 6, 7, 4])    "cmourpte"



def remix(string,array)
    i=0
    temp_arr=[]
    while(i<array.length)
        temp_arr[array[i]]=string[i]
        i=i+1
    end    
    temp_arr.join

end
print remix("computer", [0, 2, 1, 5, 3, 6, 7, 4]) 




#Problem 15:Create a function which takes in a word and spells it out, by consecutively adding letters until the full word is completed.Examplesspelling("bee")    ["b", "be", "bee"]➞spelling("happy")    ["h", "ha", "hap", "happ", "happy"]

def spelling(string)
    i=1
    temp_arr=[]
    string.each_char do |c|
    	temp_arr.push(string[0,i]) 
    	i=i+1
    end	  
    temp_arr
end
print spelling("happy")



#Problem 16:You are counting points for a basketball game, given the amount of 3-pointers scored and 2-pointersscored, find the final points for the team and return that value (2 -pointers scored, 3-pointers scored).Examplespoints(1, 1)    5➞points(7, 5)    29➞points(38, 8)    100

def points(first, second)
    print (first*2)+(second*3)
    
end
print points(7, 5)

#Problem 17:Create a function that takes a number as its only argument and returns true if it's less than or equal to zero, otherwise return false.Examplesless_than_or_equal_to_zero(5)    false➞less_than_or_equal_to_zero(0)    true➞less_than_or_equal_to_zero(-2)    true


def less_than_or_equal_to_zero(number)
    number<=0?  true: false
    
end
print less_than_or_equal_to_zero(5)





#Problem 18:Create a function which returns the Modulo of the two given numbers.Examplesmod(-13, 64)    51➞mod(50, 25)    0

def mod(a, b)
    a.modulo(b) 
    
end
print mod(-13, 64)




#Problem 19:Create a function that returns the number of syllables in a simple string. The string is made up of short repeated words like "Lalalalalalala" (which would have 7 syllables).Examplescount_syllables("Hehehehehehe")    6➞count_syllables("bobobobobobobobo")    8➞count_syllables("NANANA")    3



def count_syllables(string)
    string.length/2
end
print count_syllables("NANANA")






#Problem 20:Shaista has started his journey from home. Given a string of directions (N=North, W=West, S=South, E=East), he will walk for one minute in each direction. Determine whether a set of directions will lead him back to the starting position or not.Examplesback_to_home("NEWE")    false➞back_to_home("NENESSWW")    true➞back_to_home("NEESSW")    false


def back_to_home(string)
        if string.count('E')==string.count('W')
            if string.count('N')==string.count('S')
                return true
            end
        end
        return false
end
print back_to_home("NEESSW")








#Problem 21:Create a function that takes a string txt and a number n and returns the repeated string n number of times.If given argument txt is not a string, return Not A String !!Examplesrepeat_string("Mubashir", 2)    "MubashirMubashir"➞repeat_string("Matt", 3)    "MattMattMatt"

def repeat_string(string, num)
    if string.class!=String
        return "Not A String !!"
    else
        return string*num
    end
end
print repeat_string(1990, 7)







#Problem 22:Create a function that flips M's to W's (all uppercase).Exampleswumbo("I LOVE MAKING CHALLENGES")    "I LOVE WAKING CHALLENGES"➞wumbo("MEET ME IN WARSAW")    "WEET WE IN WARSAW"➞wumbo("WUMBOLOGY")    "WUWBOLOGY"

def wumbo(string)
    string.each_char do |c|
        if c.upcase=='M'
            string[string.index(c)]='W'
        end
    end
    string
end
print wumbo("WUMBOLOGY")





#Problem 23:Write a function that takes a string as an argument and returns the left most digit in the string.Examplesleft_digit("TrAdE2W1n95!")    2➞left_digit("V3r1ta$")    3➞left_digit("U//DertHe1nflu3nC3")    1➞left_digit("J@v@5cR1PT")    5



def left_digit(string)
    string.each_char do |c|
        if [*"0".."9"].include?(c)
            return c
        end
    end
    return "No digit found!!!!"
end
print left_digit("J@v@5cR1PT")





#Problem 24:Create a function that takes any non-negative number as an argument and returns it with its digits indescending order. Descending order is when you sort from highest to lowest.Examplessort_descending(123)    321➞sort_descending(1254859723)    9875543221➞sort_descending(73065)    76530


def sort_descending(num)
    print (num.to_s.split(//).sort.reverse.join).to_i
end
print sort_descending(1254859723)





#Problem 25:Write a function that sorts an array of characters alphabetically in ascending order (a-z) by the character at the n-th character.Examplessort_by_character(["az16", "by35", "cx24"], 2)    ["cx24", "by35", "az16"]➞// By 2nd character: ["x", "y", "z"] is in alphabetical order.

def sort_by_character(string,n)
    (string.sort_by { |word| word[n-1] })
end
print sort_by_character(["az16", "by35", "cx24"], 2)



#Problem 26:In mathematics, interval is the difference between the largest number and the smallest number in an array.To illustrate:A = (3, 5, 7, 23, 11, 42, 80)Interval of A = 80 - 3 = 77Create a function that takes an array and returns ":)" if the interval of the array is equal to any other element; otherwise return ":(".Examplesface_interval([1, 2, 5, 8, 3, 9])    ":)"➞# Array interval is equal to one of the other elements.face_interval([5, 2, 8, 3, 11])    ":("➞# Array interval is not among the other elements.face_interval("bruh")    ":/"➞# "bruh" is not an array. It's string.

def face_interval(array)
    if array.class==Array
        if array.include?(array.sort.last-array.sort.first)
            return ":)"
        else
            return ":("
        end 
    else
        return ":/" 
    end  
end
print face_interval([5, 2, 8, 3, 11])









#Problem 27:Create a function to count the number of 1s in a 2D array.
Examplescount_ones([[1, 0],[0, 0]])    1


def count_ones(array)
    array.flatten.count(1)
end
print count_ones([[1, 2, 3],[0, 2, 1],[5, 7, 33]])






#Problem 28:Create a function that keeps only strings with repeating identical characters (in other words, it has a set size of 1).Examplesidentical_filter(["aaaaaa", "bc", "d", "eeee", "xyz"])➞["aaaaaa", "d", "eeee"]identical_filter(["88", "999", "22", "545", "133"])➞["88", "999", "22"]identical_filter(["xxxxo", "oxo", "xox", "ooxxoo", "oxo"])➞[]

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

    #print array[0].split("").all?{|a| a==(array[0][0])}
end
print identical_filter(["xxxxo", "oxo", "xox", "ooxxoo", "oxo"])






#Problem 29:Create a function that compares two words based on the sum of their ASCII codes and returns the word with the smaller ASCII sum.Examplesascii_sort(["hey", "man"])    "man"➞# ["h", "e", "y"]    sum([104, 101, 121])    326➞➞# ["m", "a", "n"]    sum([109, 97, 110])    316➞➞ascii_sort(["majorly", "then"])    "then"➞ascii_sort(["victory", "careless"])    "victory"



def ascii_sort(array)
    ascii = {
        "a" => 97,
         "b" => 98,
         "c" => 99,
         "d" => 100,
         "e" => 101,
         "f" => 102,
         "g" => 103,
         "h" => 104,
         "i" => 105,
         "j" => 106,
         "k" => 107,
         "l" => 108,
         "m" => 109,
         "n" => 110,
         "o" => 111,
         "p" => 112,
         "q" => 113,
         "r" => 114,
         "s" => 115,
         "t" => 116,
         "u" => 117,
         "v" => 118,
         "w" => 119,
         "x" => 120,
         "y" => 121,
         "z" => 122
        }
        i=0
        count=0
        smallest_count=10000
        smaller_ascii=" "
        while i<array.length
            j=0
            while j<array[i].length
                count=count+ ascii[array[i].split("")[j]]
                j=j+1
            end
            if count<smallest_count
                smallest_count=count
                smaller_ascii=array[i]
            end
            count=0
            i=i+1
        end
        smaller_ascii
end
print ascii_sort(["hey", "man"])




#Problem 30:Given an array of ingredients i and a flavour f as input, create a function that returns the array, but with the elements bread around the selected ingredient.Examplesmake_sandwich(["tuna", "ham", "tomato"], "ham")    ["tuna", "bread", "ham", "bread", "tomato"]➞make_sandwich(["cheese", "lettuce"], "cheese")    ["bread", "cheese", "bread", "lettuce"]➞make_sandwich(["ham", "ham"], "ham")    ["bread", "ham", "bread", "bread", "ham", "bread"]

def make_sandwich(array, string)
    i=0
    while i<array.length
        if array[i]==string
            array.insert(i,"bread")
            array.insert(i+2,"bread")
        end
        i=i+3
    end
    print array
end
make_sandwich(["ham", "ham"], "ham")







#Ques # 31

#Write a Ruby program to display the current date and time.

#Sample Output:

#Current Date and Time: 27/12/2017 06:04

require 'date'
current_time = DateTime.now
cdt = current_time.strftime "%d/%m/%Y %H:%M"
puts "Current Date and Time: "+cdt









#Ques # 32

#Write a Ruby program to create a new string which is n copies of a given string where n is a non-negative integer.

#Sample Output:

#a
#aa
#aaa
#aaaa
#aaaaa


def multiple_string(str, n)
    return str*n
end
print multiple_string('a', 1),"\n"
print multiple_string('a', 2),"\n"
print multiple_string('a', 3),"\n"
print multiple_string('a', 4),"\n"
print multiple_string('a', 5),"\n"








#Ques # 33

#Write a Ruby program which accept the radius of a circle from the user and compute the parameter and area.

#Sample Output:

#Input the radius of the circle: The perimeter is 31.41592653.
#The area is 78.539816325.


radius = 5.0
perimeter = 0.0
area = 0.0
print "Enter radius of the circle : "
radius = gets.to_f
perimeter = 2 * 3.141592653 * radius
area = 3.141592653 * radius * radius
puts "Perimeter : #{perimeter}."
puts "Area :  #{area}."




#Ques # 34


#Write a Ruby program to check whether a string starts with "if"

def start_if(str)
    return str[0, 2] == "if";
 end
 print start_if("ifelse"),"\n"






#Ques # 35

#Write a Ruby program which accept the user's first and last name and print them in reverse order with a space between them.
#Sample Output:

#Enter your first name: Shaista
#Enter your last name: Abid
#Hello Abid Shaista

puts "Enter your first name: "
first_name = gets.chomp
puts "Enter your last name: "
last_name = gets.chomp
puts "Hello #{last_name} #{first_name}"






#Ques # 36

#Write a Ruby program to check two integer values whether either of them is in the range 20..30 inclusive.

def in_range(a, b)
    return ((a >= 20 && a <= 30) || (b >= 20 && b <= 30));	
end
 
print in_range(15, 99),"\n"
 
 
 
 
 
 
#Ques # 37


#Write a Ruby program to check three numbers and return true if one or more of them are small. A number is called "small" if it is in the #range 1..10 inclusive.


def in_range(a, b, c)
    return ((a >= 1 && a <= 10) || (b >= 1 && b <= 10) || (c >= 1 && c <= 10));	
end
print in_range(1, 12, 25),"\n"
 
 
 
 
 
#Ques # 38

#Write a Ruby program to print the following 'here document'.
#Sample string :
#a string that you "don't" have to escape
#This
#is a ....... multi-line
#heredoc string --------> example



puts(
    
    'Sample string :
    a string that you "don\'t" have to escape
    This
    is a ....... multi-line
    heredoc string --------> example'
    
    )
    
    
    

#Ques # 39

#Write a Ruby program to create a new string where "if" is added to the front of a given string. If the string already begins with "if", #return the string unchanged.


def if_string(str)
    str[0, 3] == "if " ? str : "if " << str 
end
print if_string("if else")






#Ques # 40


#Write a Ruby program to create a new string from a given string using the first three characters or whatever is there if the string is #less than length 3. Return n copies of the string.


def multiple_string(str, n)
    str.length < 3 ? str*n : str[0..2]*n
end

print multiple_string('abcdefg', 1),"\n"







#Ques # 41

#Write a Ruby program which accept the radius of the sphere as input and compute the volume.

r = 5.0
v = 0.0
pi = 3.141
print "Enter Radius of Circle : "
r = gets.to_f
v = (4/3)* (pi)* (r**3)
puts "Volume : #{v}."







#Ques # 42

#Write a Ruby program to create a new string from a given string where the first and last characters have been exchanged.

def front_back(string)
    string[-1] << string[1...-1] << string[0]
end
print front_back("Ruby")




#Ques # 43

#Write a Ruby program to test whether you are minor (Consider a child unless he or she is less than 18 years old.) or not.


print "Enter your age: "
age = gets.to_i
puts "You are a minor" unless age >= 18




#Ques # 44

#Write a Ruby program to compute the absolute difference between n and 33 and return double the absolute difference if n is over 33.


def diff(n)
    n > 33 ? ((n-33)*2).abs : (n-33).abs
end
print diff(47)





#Ques # 45

#Write a Ruby program to find the maximum of two numbers.

x= 6
y =8
max = x>y ? x:y
puts "Max = "+max.to_s






#Ques # 46

#Write a Ruby program to check two integers and return true if one of them is 20 otherwise return their sum.

def makes20(x,y)
    return x == 20 || y == 20 || x + y == 20
end

print makes20(10, 10)
print makes20(15, 20)






#Ques # 47

#Write a Ruby program to find the greatest of three numbers.

x,y,z = 2,5,4
if x >= y and x >= z
     puts "x = #{x} is greatest."
elsif y >= z and y >= x 
     puts "y = #{y} is greatest."
else 
     puts "z = #{z} is greatest."
end




#Ques # 48

#Write a Ruby program to check whether a number is within 10 of 100 or 200.
#Sample Output:
#print near_hundred(10) => false
#print near_hundred(110) =>true
#print near_hundred(90) =>true

def near_hundred(n)
    (n-100).abs <= 10 || (n-200).abs <= 10
end

print near_hundred(10) 
print near_hundred(110) 
print near_hundred(90)





#Ques # 49

#Write a Ruby program to compute the sum of the two integers, if the two values are equal return double their sum otherwise return their sum.

def sum_double(x, y)
    x == y ? (x+y)*2 : x+y
end

print sum_double(5, 5) 






#Ques # 50


#Write a Ruby program which takes a string from user and print it 9 times.

puts "Enter a String : "
string=gets.chomp
9.times{
    puts string
}



#Ques # 51

#Write a Ruby program to create a new string from a given string with the last character added at the front and back of the given string. #The lenght of the given string must be 1 or more.

#Sample Output:
#print temp("abc") =>cabcc
#print temp("abcd")=>dabcdd
#print temp("java")=>ajavaa



def temp(str)
    len = str.length() - 1;
	return (str.split('')[len] + str + str.split('')[len]);
end

puts temp("abc")
puts temp("abcd")
puts temp("java")




#Ques # 52

#Write a Ruby program to check two temperatures and return true if one is less than 0 and the other is greater than 100.


def temp(temp1, temp2)
    return ( temp1 < 0 && temp2 > 100 ) || ( temp1 > 100 && temp2 < 0 );
end
print temp(110, -1)





#Ques # 53

#Write a Ruby program to print 25 upto 36.

25.upto 36 do |x|
      puts x
 end





#Ques # 54

#Write a Ruby program to print even numbers from 1 to 10.

2.step 10, 2 do |x|
      puts x
 end
 
 
 
 
 
 
 
#Ques # 55

#Write a Ruby program to print odd numbers from 10 to 1.


9.step 1, -2 do |x|
      puts x
 end





#Ques # 56

#Write a Ruby program to check two non-negative integer values and return true if they have the same last digit.

def test_last_digit(a, b)
    return (a % 10 == b % 10);
 end
 print test_last_digit(5, 5)
 
 
 
#Ques # 57

#Write a Ruby program to retrieve the total marks where subject name and marks of a student stored in a hash.

#Sample subject and marks : OOP -74, DSA – 89, WEB ENG-91


student_marks = Hash.new 
student_marks['OOP'] = 74
student_marks['DSA'] = 89
student_marks['WEB ENG'] = 91
total_marks = 0
student_marks.each {|key,value|
              total_marks +=value
        } 
puts total_marks





#Ques # 58

#Write a Ruby program to test whether a year is leap year or not.


year = 2020
if year % 400 == 0
  	puts 'Leap year'
elsif year % 4==0 && year % 100 != 0 
    puts 'Leap year'
else  
    puts 'Not leap year'
end



#Ques # 59


#Write a Ruby program to check whether a string 'Ruby' appears at index 1 in a given sting, if 'Ruby' appears return the string without #'Ruby' otherwise return the string unchanged.

def ruby_test(str)
    if(str[1,4] == "Ruby")
         return (str[5, str.length()]);
     else
         return str;
     end
 end
 print ruby_test("ZRubyScript")
 
 
 
 
#Ques # 60

#Write a Ruby program to check two integers and return whichever value is nearest to the value 10, or return 0 if two integers are equal.


def nearest_to_ten(a, b)
    max_a = (10-a).abs;
	max_b = (10-b).abs;
	if (max_a < max_b)
		return a;
	end
	if (max_b < max_a)
		return b;
	end
	return 0;
end
print nearest_to_ten(7, 14)

