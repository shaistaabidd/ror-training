#Convert strings to integers and increment each value by 10.

array = ["11", "21", "5"]
print array.map { |str| (str.to_i)+10 }
