#Given the table below
#Exams	    Marks
#Computer	95
#Physics	88
#DSA	    99
#OOP	    94
#print flowers according to their colors

marks = {   
    "Computer" => 95,   
    "Physics" => 88,   
    "DSA" => 99,   
    "OOP" => "94"   
}   
  
marks.each { |key, value|   puts "#{key} marks: #{value}"}

