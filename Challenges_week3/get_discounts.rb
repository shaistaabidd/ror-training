#Create a function that applies a discount d to every number in the array.Examplesget_discounts([2, 4, 6, 11], "50%")  
#[1, 2, 3, 5.5]➞get_discounts([10, 20, 40, 80], "75%")    [7.5, 15, 30, 60]➞get_discounts([100], "45%")    [45]

def get_discounts(arr, disc)
    temp=arr.map {|i| "%g" %  ((disc.to_f/100)*i)}
end
puts get_discounts([100], "45%")

