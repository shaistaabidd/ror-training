#You are given an array of dates in the format Dec 11 and a month in the format Dec as
#arguments. Each date represents a video that was uploaded on that day. Return the number
#of uploads for a given month.

#Examples
#upload_count(["Sept 22", "Sept 21", "Oct 15"], "Sept") ➞ 2

#upload_count(["Sept 22", "Sept 21", "Oct 15"], "Oct") ➞ 1

def upload_count(arr, str)
    arr.count{ |i| i[0..2]==str[0..2] }
end 
puts upload_count(["Sept 22", "Sept 21", "Oct 15"], "Oct")