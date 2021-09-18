module UserDetails
    def user_details(data)
        numbers = ['0','1','2','3','4','5','6','7','8','9']
        flag=true
        while flag==true
            is_num=false
            data=data.split("")
            data.each do |num|
                if numbers.include?(num)
                    is_num = true
                else
                    puts "Enter Correct Number"
                    data=gets.chomp
                    is_num = false
                    break
                end
            end
            if is_num == true
                flag=false
                data = data.join("")
                break
            end
        end
        return data
    end
end