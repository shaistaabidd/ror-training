#Check whether a string contains a substring

def is_substring(str,substr)
    if str.include? substr
        puts "String includes 'cde'"
    end
end
is_substring("abcdefg","cde")