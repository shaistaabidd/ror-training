#Create a function that takes an array containing nested arrays as an argument.
#Each subarray has 2 elements. The first element is the numerator and the second element is the denominator.
#Return the sum of the fractions rounded to
#the nearest whole number.Examplessum_fractions([[18, 13], [4, 5]])    2➞sum_fractions([[36, 4], [22, 60]])  9


def sum_fractions(arr)
    i=0
    sum=0
    while(i<arr.length)
        sum=sum+ ((arr[i][0])/arr[i][1].to_f).round
        i=i+1
    end
    sum
end
puts sum_fractions([[36, 4], [22, 60]])