#Create a function that takes two numbers as arguments (num, length) and returns an array of multiples of num
#until the array length reaches length.Examplesarray_of_multiples(7, 5)
#[7, 14, 21, 28, 35]➞array_of_multiples(12, 10)    [12, 24, 36, 48, 60, 72, 84, 96, 108, 120]➞array_of_multiples(17, 6)
#[17, 34, 51, 68, 85, 102]

def array_of_multiples(num,x)
    temp_arr=[]
    for i in 1..x
        temp_arr.push(num*i)
    end
    temp_arr
end
print array_of_multiples(17, 6)