#Write a Ruby program which takes array of students and store it in hash according to roll no 1,2,3..
def arr_to_hash(arr)
  temp_hash = Hash.new
  arr.each_with_index { |item, index|
    temp_hash[index+1] = item
  }
  temp_hash
end
print arr_to_hash(["Ali","Ahmad","Saira"])
