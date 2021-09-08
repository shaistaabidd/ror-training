#write a method which returns the longest word in a string. If two words have same length, return first one.


def longest_word(str)
    str.split.max { |a, b| a.length <=> b.length }
end
print longest_word("I am from Pakistan")