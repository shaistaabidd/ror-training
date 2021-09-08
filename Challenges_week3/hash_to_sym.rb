
#Convert hash values to symbols
hash = { "OOP": "Basic", "DSA": "Advanced" }
print hash.map { |k,v| [k, v.to_sym]}.to_h