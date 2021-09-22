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