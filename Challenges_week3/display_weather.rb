#Create a function that returns weather conditions on basis of following requirements
#"Snowfall" if it is less than or equal to -5, "Rain" if between 7 and 15, otherwise "Good"  


def weather_conditions(t)
	if t<=-5
		"Snowfall"
	elsif (t<15 && t>7)
		"Rain"
	else		
		"Hot"
	end
end		
print weather_conditions(5)