#Write a Ruby program to convert an array into an index hash.
nums = [10, 20, 30, 40]
temp_hash = Hash[nums.collect { |item| [item, ""] } ]
print temp_hash