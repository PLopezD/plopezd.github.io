# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# The input is a random positive Numbers
# the output is a string of that number with commas appropriately inserted

# Step1: divide the number by 1000
# 	if the number is not divisible by 1000 convert to_s then end
# 	if the number divided by 1000 is 1>=x>1000, insert 1 comma after 3 digits and  turn to string
# 	if the number divided by 1000 is 1000>=x>1,000,000 insert 2 comma. 1 after 3 digits 
# 		1 after 6 digits then turn to string
# end


# 2. Initial Solution
# def seperate_comma(number)
# 	if number<1000 
# 		number.to_s
# 		return number
# 	elsif number >= 1000 & number < 100000
# 		array = number.to_s.split("")
# 		array.insert(-4,",").join.to_s
# 		return array

# 	else number>= 100000 & number < 1000000
# 		array = number.to_s.split("")
# 		array.insert(-4,",").insert(-8,",").join.to_s
# 		return array
# 	end
# end



# 3. Refactored Solution
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

# 4. Reflection 
# This was a really good excersise. It was a bit annoying that as I was testing and I was sure I had reached the right
# conclusion with all the syntax as I wanted it that and figured that it for sure had to work that I was spelling "seperate"
#  instead of "separate" in the name of my function. This added an additional 15 mins to testing. it did however make it clear 
#  how important attention to detail is so i appreciate the lesson. All in all I enjoyed doing it and am excited to move 
#  on to the next one.







