#Create a function that converts A's to B's (downcase) in all occurences. Exampleswumbo("Ruby Challenges")
#"Ruby Chbllenges"


def wumbo(string)
  string.each_char do |c|
      if c.upcase=='A'
          string[string.index(c)]='b'
      end
  end
  string
end
print wumbo("Ruby Challenges")