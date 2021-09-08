#Write a Ruby program to check two integer values whether either of them is in the range 420..630 inclusive.

def inclusive_range(a, b)
    return ((a >= 420 && a <= 630) || (b >= 420 && b <= 630));	
end
 
print inclusive_range(515, 99),"\n"