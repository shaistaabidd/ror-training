#Fibonacci program in Ruby
#Write a program that prints Fibonacci series in Ruby Programming Language.
#e.g. The Fibonacci series up to 10 is: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55


def fibonacci(n)
    first=0
    second=1
    nextterm=0
    count=1
    while(count<=n+1)
	    if(count<=1)
		    nextterm=count
	    else
		    puts nextterm
		    nextterm=first+second
		    first=second
		    second=nextterm
	    end
	    count+=1
    end
end
fibonacci(6) 