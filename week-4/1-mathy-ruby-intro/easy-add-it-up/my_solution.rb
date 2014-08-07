# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

<<<<<<< HEAD
# I worked on this challenge [by myself ].

# 1. Pseudocode



# What is the input? 
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# the input for total is the arrays listed
# the output for total is the sum of the arrays listed
# step1 : we need to define the total function
# step2 : we need to have the total function repeat over every element of the array and sum it to the last
# step3 : have the total function return the Solution

# The input for the 'sentence_maker' function are the sentence arrays
# The output of the sentence maker is a string that combines everything in the arrays with spaces, a period at the end and capitalizes the first string
# Step1 : Define sentence_maker function
# step2: combine, capitalize the first unit, add spaces, add period
# 	step2a: Recognize the first string in the array
# 	step2b: capitalize that string
# 	step2c: recognize the last string in the array
# 	step2d: put a period after that string
# 	step2e: put spaces between all strings and combine them
# 		- iterate over every string in array to do this

# step3: Return the completed, concatenated string



# 2. Initial Solution

def total(numberarray)
	sum = 0
	numberarray.each do |a|
		 sum = sum + a
	end
	return sum
end

def sentence_maker(stringarray)
	b = stringarray[0].capitalize
	stringarray[0] = b

	finalsentence = stringarray.join(" ")+"."
	return finalsentence
end



# 3. Refactored Solution
def total(numberarray)
	sum = 0
	numberarray.each do |a|
		 sum += a
	end
	return sum
end

def sentence_maker(stringarray)
	b = stringarray[0].capitalize
	stringarray[0] = b
	finalsentence = stringarray.join(" ")+"."
	return finalsentence
end


# 4. Reflection 

# I think this was a great project for getting our bearings on syntax sorted in ruby.
# A little longer than the excersises in socrates which allowed us to mess up a bit.
# I also like that there seem to be many ways to get to the right answer in these examples.
# That allows us to play around with different solutions to the problem. Looking forward 
# to the next one. Left this feeling positive.
=======
# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution



# 3. Refactored Solution



# 4. Reflection 
>>>>>>> baf172fcf73295276c5a63d692f58ac7b8450811
