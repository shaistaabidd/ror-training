#Create a function that uses an array, incrementing (+5) for each odd number and decrementing (-5) for each even number.

def transform(a)
  a.map{|x|x.odd? ? x+5 : x-5}
end
print transform([1,2,3,4,5])

