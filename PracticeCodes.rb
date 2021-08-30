#Roman Numerals Problem

roman={
	1 => 'I' ,
	2 => 'II' ,
	3 => 'III' ,
	4 => 'IV' ,
	5 => 'V' ,
	6 => 'VI' ,
	7 => 'VII' ,
	8 => 'VIII' ,
	9 => 'IX' ,
	10 => 'X' 
}
puts roman[1]


#ruby blanks

blanks=['verb','adjective','adjective','noun']
vowels=['a','e','i','o','u']
result=blanks.map do |b|
	article=vowels.include?(b[0]) ? 'an' : 'a'
	puts "Give me #{article} #{b} : "
	response=gets.chomp
end
puts "I decided to #{result[0]} a #{result[1]} party for my #{result[2]} #{result[3]}."



#pig_latin 

def pig_latin(word)
	vowels=['a','e','i','o','u']
	word.each_char do |n|
		if vowels.include?(n) 
			main=word[(word.index(n))..(word.length)]
			front=word[0...(word.index(n))]
			return main+front+"ay"
			break
		
		end
	end
end
puts pig_latin("where")

#Guessing Game

puts  "Ruby Guessing Game !"
puts "What is your Name?"
name=gets.chomp()
puts "Hello, #{name}."
puts "We are going to play a guessing game. \nI'll choose random number between 1-10 \nand you will have three chances to guess it.\nOkay, I have my Number."
my_number=rand(10)
count=1
while count<=3
	puts "Guess #{count}: "
	guess=gets.chomp()
	if (guess.to_i==my_number)
		puts "Wow You Won!! My number was #{guess}."
		exit
	end	
	count=count+1	
end
puts "Sorry, that wasn't it\nThat was your last guess. "
puts "My number was #{my_number}\n\nGood Bye!"


#blanket Patterns
colors="RRGGYYKK"

line=20
line.times do
	puts colors
	first=colors[0]
	last=colors[1..9]
	colors =last+first
	line=line-1
end





