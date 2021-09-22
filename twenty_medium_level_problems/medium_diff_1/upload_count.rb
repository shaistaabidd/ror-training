#You are given an array of dates in the format Dec 11 and a month in the format Dec as arguments. 
#Each date represents a video that was uploaded on that day. Return the number of uploads for a 
#given month.
#Examples

#upload_count(["Sept 22", "Sept 21", "Oct 15"], "Sept")   2
def upload_count(arr, month)
  count=0
  arr.each do |char|
    if char.upcase.include? month.upcase
      count=count+1
    end
  end
  count
end
p upload_count(["Sept 22", "Sept 21", "Oct 15"], "Sept")