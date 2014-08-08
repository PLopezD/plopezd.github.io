# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# the input is the grade array
# the output is the letter grade

# step1: take the average of the array
# step2: find what letter grade corresponds to that grade with if/else statements
# step3: return proper letter grade


# 2. Initial Solution
def get_grade(array)
	average = array.inject {|sum,n| sum + n}/array.size
if 
	average >= 90
	return "A"
elsif 
	average >= 80
	return "B"
elsif 
	average >= 70
	return "C"
elsif 
	average >= 60
	return "D"
else
	return "F"	
end
	


end


# 3. Refactored Solution
def get_grade(array)
	average = array.inject {|sum,n| sum + n}/array.size
	if 
		average >= 90
		return "A"
	elsif 
		average >= 80
		return "B"
	elsif 
		average >= 70
		return "C"
	elsif 
		average >= 60
		return "D"
	else
		return "F"	
	end
end


# 4. Reflection 
I enjoyed this project as well. Another easy workthrough ruby syntax and irb testing. Another good confidence booster. 


