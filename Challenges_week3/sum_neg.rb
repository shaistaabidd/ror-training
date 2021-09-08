#Create a function that takes an array of positive and negative numbers. Return an array where the first element is
#the count of positive numbers and the second element is the sum of negative numbers.
#Examplessum_neg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15])    
#[10, -65]➞// There are a total of 10 positive numbers.// The sum of all negative numbers equals -65.
#sum_neg([92, 6, 73, -77, 81, -90, 99, 8, -85, 34])    [7, -252]➞sum_neg([91, -4, 80, -73, -28])    
#[2, -105]➞sum_neg([])    []



def sum_neg(arr)
    if arr!=[]
        positive_count=0
        sum_negative=0
        arr.each do |n|
            if n>=0
                positive_count=positive_count+1
            else
                sum_negative=sum_negative+n
            end
        end
        return positive_count,sum_negative 
    end
    return arr
end
print sum_neg([92, 6, 73, -77, 81, -90, 99, 8, -85, 34])