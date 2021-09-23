#Create a function that takes a string and returns a new string with its first and last characters 
#swapped, except under three conditions:
#If the length of the string is less than two, return "Incompatible.".
#If the argument is not a string, return "Incompatible.".
#If the first and last characters are the same, return "Two's a pair.".
#Examples
#flip_end_chars("Cat, dog, and mouse.")   ".at, dog, and mouseC"➞
#flip_end_chars("ada")   "Two's a pair."➞
#flip_end_chars("Ada")   "adA"➞
#flip_end_chars("z")   "Incompatible."➞

def flip_end_chars(string)
	if string.is_a?(Array)
		return "Incompatible."
	elsif string[0]==string[string.length-1] && string.length>=2
		puts "Two's a pair."
	elsif string.length>=2
		string[0],string[string.length-1]=string[string.length-1],string[0]
		return string
	else	
		return "Incompatible."
	end	
end
puts flip_end_chars([1, 2, 3])