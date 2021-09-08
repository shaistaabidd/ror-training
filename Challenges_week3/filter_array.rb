#Create a function that takes an array of strings and integers, and filters out the array so that
#it returnsan array of integers only.Examplesfilter_array([1, 2, 3, "a", "b", 4])    
#[1, 2, 3, 4]➞filter_array(["A", 0, "Edabit", 1729, "Ruby", "1729"])    [0, 1729]➞filter_array(["Nothing", "here"])   []



def filter_array(arr)
    arr.select{|i| i.class==Integer} 
end
print filter_array(["Nothing", "here"])