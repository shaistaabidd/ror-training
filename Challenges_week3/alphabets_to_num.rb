#Create a function that converts a string of letters to 
#their respective number in the alphabet.
#Examplesalph_num("XYZ")    "23 24 25"➞alph_num("ABCDEF")    
#"0 1 2 3 4 5"➞alph_num("JAVASCRIPT")    "9 0 21 0 18 2 17 8 15 19"

def alph_num(str)
    alpha={
        "A"=>0,
        "B"=>1,
        "C"=>2,
        "D"=>3,
        "E"=>4,
        "F"=>5,
        "G"=>6,
        "H"=>7,
        "I"=>8,
        "J"=>9,
        "K"=>10,
        "L"=>11,
        "M"=>12,
        "N"=>13,
        "O"=>14,
        "P"=>15,
        "Q"=>16,
        "R"=>17,
        "S"=>18,
        "T"=>19,
        "U"=>20,
        "V"=>21,
        "W"=>22,
        "X"=>23,
        "Y"=>24,
        "Z"=>25
    }
    str.split("").map{|i| alpha[i]}.join(" ")
end


print alph_num("JAVASCRIPT")