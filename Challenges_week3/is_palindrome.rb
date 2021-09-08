# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.


def is_palindrome(str)
    if str == str.reverse
        return true
    else
        return false
    end
end
puts is_palindrome("AnnA")