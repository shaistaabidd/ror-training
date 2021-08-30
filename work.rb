#puts 16.to_s(2) 	#it coonvert int to binary
range=(1..10)
array=(range).to_a
puts range
puts array

puts range.to_a # => [1, 2, 3, 4, 5, 6, 7, 8, 9]

puts (1..5).map {|n| n>2}


value=10
def output_value
	value=20
	puts value
end
output_value
puts value


name="gloves"
length= name.length
vowels=['a','e','i','o','u']
name.each_char do |n|
	if vowels.include?(n)
		first_vowel_index= name.index(n)
		first=name[first_vowel_index..length]
		puts first
		break
		
	end
	
end

name="where"
length= name.length
vowels=['a','e','i','o','u']
name.each_char do |n|
	if vowels.include?(n) 
		main=name[(name.index(n))..(name.length)]
		front=name[0...(name.index(n))]
		puts main+front+"ay"
		break
		
	end
end
name="where"
vowels=['a','e','i','o','u']
name.each_char do |n|
	if vowels.include?(n) 
		main=name[(name.index(n))..(name.length)]
		front=name[0...(name.index(n))]
		puts main+front+"ay"
		break
		
	end
end

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





blanks=['verb','adjective','adjective','noun']
vowels=['a','e','i','o','u']
result=blanks.map do |b|
	article=vowels.include?(b[0]) ? 'an' : 'a'
	puts "Give me #{article} #{b} : "
	response=gets.chomp
end
puts "I decided to #{result[0]} a #{result[1]} party for my #{result[2]} #{result[3]}."



blanks=['verb','adjective','adjective','noun']
vowels=['a','e','i','o','u']
result=blanks.map do |b|	# to take multiple inputs from user..   
	
	response=gets.chomp
end
puts "I decided to #{result[0]} a #{result[1]} party for my #{result[2]} #{result[3]}."



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
