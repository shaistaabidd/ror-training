require 'date'
def calculate_num_of_days(month, year)
    Date.new(year, month, -1).day
  end
  def all_days_in_month(year,i)
      days= calculate_num_of_days(i,year)
      temp_hash=Hash.new
      for j in 1..days
          temp_hash[j]=(Date.new(year,i,j).strftime('%a'))
      end
      temp_hash
  end
  def calendar(year)
      my_hash = Hash.new
      my_hash[year] = Hash.new
      for i in 1..12
          my_hash[year][Date.new(year,i).strftime('%b')]=all_days_in_month(year,i)
      end
      my_hash
  end
  puts "Enter a year: "
  year=gets.chomp
  length=((year).split('').count).to_i
  puts length
  if length==4
    while year.to_i>2070 || year.to_i<1970
        puts "Please Enter the Year between 1970-2070"
        year=gets.chomp
    end
    year=year.to_i
  elsif length==2
    if year.to_i==80 || year.to_i==90
        year=("19"+(year.to_s)).to_i
    elsif year.to_i==70
        puts "Press '1' for 1970 or Press '2' for 2070"
        response=gets.chomp
        flag=true
        while flag

            if response.to_i <1 || response.to_i>2
                puts "Press '1' for 1970 or Press '2' for 2070"
                response=gets.chomp
                flag=true
            else
                flag=false
            end
        end
        if response==1
            year=("19"+(year)).to_i
        else
            year=("20"+(year)).to_i
        end
    elsif year=="00"
        year=("20"+(year)).to_i
    else
        year=("20"+(year)).to_i
    end
  end
  #year= year.to_s[2..4].to_i
  puts calendar(year)
  puts "Do you want to search a month? Press 'y' for yes or 'n' for no"
  temp=gets.chomp
  if temp.downcase=='y'
      puts "Enter a Month from 1-12"
      month=gets.chomp.to_i
      puts all_days_in_month(year,month)
  end
