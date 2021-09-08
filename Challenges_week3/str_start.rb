#Write a Ruby program to check whether a string starts with "yes"

def start_if(str)
    return str[0, 3] == "yes";
end
print start_if("yes We are going"),"\n"