#Given an array with an odd number of elements, return whether the scale will tip "left" or "right" based
#on the sum of the numbers. The scale will tip on the direction of the largest total. If both sidesare equal,
#return "balanced".Examplesscale_tip([0, 0, "I", 1, 1])    "right"➞# 0 < 2 so it will tip
#rightscale_tip([1, 2, 3, "I", 4, 0, 0])    "left"➞# 6 > 4 so it will tip left



def scale_tip(arr)
    if arr[0...arr.index("I")].sum>arr[(arr.index("I")+1)..arr.index(arr.last)].sum
        print "Left"

    elsif arr[0...arr.index("I")].sum<arr[(arr.index("I")+1)..arr.index(arr.last)].sum
        print "Right"
    else
        print "Balanced"
    end
end
scale_tip([5, 5, 5, 0, "I", 10, 2, 2, 1])