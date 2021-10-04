#Write a ruby program which takes a number as input and prints all prime numbers upto that number
def return_primes(num)
  require 'prime'
  temp_arr=Prime.entries num 
end
print return_primes(97)
