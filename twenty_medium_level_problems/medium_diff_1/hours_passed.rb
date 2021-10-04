#Create a function that takes time1 and time2 and return how many hours have passed between the 
#two times.
#Examples

#hours_passed("3:00 AM", "9:00 AM")   "6 hours"➞
#hours_passed("2:00 PM", "4:00 PM")   "2 hours"➞
#hours_passed("1:00 AM", "3:00 PM")   "14 hours"
def hours_passed(start_time, end_time)
  if start_time.split[1].upcase==end_time.split[1].upcase
    print end_time[0,end_time.split[0].index(':')].to_i-start_time[0,start_time.split[0].index(':')].to_i
  else
    print (12-start_time[0,start_time.split[0].index(':')].to_i)+(end_time[0,end_time.split[0].index(':')].to_i)
  end
end
hours_passed("3:00 AM", "1:00 PM")