#Write a Ruby program to compute the sum of two arrays (length 3) and return
#the array which has the largest sum.

def check_array(a, b)
    sum = (a[0]+a[1]+a[2])-(b[0]+b[1]+b[2])
	if(sum >= 0)
		return a
	end
	return b
end
print check_array([3, 6, 5], [2, 3, 5])