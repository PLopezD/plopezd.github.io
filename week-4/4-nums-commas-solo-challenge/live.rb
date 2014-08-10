def separate_comma(number)
	if number < 1000 
		string = number.to_s
		p string
	elsif number >= 1000 && number <= 999999
		array = number.to_s.split("")
		array.insert(-4,",")
		join = array.join("")
		p join

	else number > 1000000 && number < 999999999
		array = number.to_s.split("")
		array.insert(-4,",").insert(-8,",").join.to_s
		join = array.join("")
		p join
	end
end

def random_num(min, max)
   rand(max - min + 1) + min
end


separate_comma(random_num(0, 999))

separate_comma(random_num(1000, 999999))

separate_comma(random_num(1000000, 999999999))