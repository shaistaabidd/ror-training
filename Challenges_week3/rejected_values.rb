#Given range of 10 to 100. A value is rejected if it is greater than 43. Print rejected Values
def rejected_values
    range = 10..100   
    ans = range.reject {|i| i <= 43 }
    puts "Rejected values: #{ans}"  
end 
rejected_values