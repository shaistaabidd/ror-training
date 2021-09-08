
#Create a function that uses an array, incrementing (+4) for each odd number and decrementing (-4) for each even number.

def increment_decrement(a)
  a.map{|x|x.odd? ? x+4 : x-4}
end
print increment_decrement([1,2,3,4,5])