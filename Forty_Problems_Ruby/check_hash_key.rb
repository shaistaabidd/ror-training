#Write Ruby program to check whether the hash contains specified key or not
hash={ruby:1,rails:2,js:3}

puts hash.key?(:ruby)
puts hash.key?(:one)
puts hash.key?(:oop)