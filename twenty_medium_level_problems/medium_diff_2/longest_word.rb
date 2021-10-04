#Write a ruby Program to find longest word
def longest_word(str)
  longest = str.inject do |memo, word|
    memo.length > word.length ? memo : word
  end
end
print longest_word(["Shaista","Abid"])  
