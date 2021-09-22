#Write a ruby program that distributes given array of students into 3 equal parts
def distribute_arr(arr)
  arr.each_slice(3) { |a| p a } 
end
puts distribute_arr(["Hamza","Talha","Ayesha","Naila","Iqra","Ali","Ubaid"])
