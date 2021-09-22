
#Convert hash values to symbols
hash = { "OOP": "Basic", "DSA": "Advanced" }
print hash.transform_values { |x| x } 