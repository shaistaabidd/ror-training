#Given Table
#Name	    Salary
#Hamza      20000
#Dawood     15000
#Khurram    60000
#print Person Name whose Salary it greater than 17000

salary = {
  "Hamza": 20000,
  "Dawood": 15000,
  "Khurram": 60000
}
print salary.select { |k, v| v>17000 }