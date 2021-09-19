#Write a Ruby program to check whether a number exists in string or not
#("It's 9 in String")->true


def check_str(str)
    num=["1","2","3","4","5","6","7","8","9","0"]
    new_str=str.split("")
    new_str.each do |n|
        if num.include?(n)
            return true
        end
    end
    return false
end
print check_str("It's 9 in String")