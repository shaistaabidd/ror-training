#Create a function which returns how many Friday 13ths there are in a given year.
#Examples
#how_unlucky(2020) ➞ 2
#how_unlucky(2026) ➞ 3
#how_unlucky(2016) ➞ 1

def how_unlucky(year)
    require 'date'
    (1..12).count { |month| Date.new(year, month, 13).friday? }
end
print how_unlucky(2016) 