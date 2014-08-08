# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
# 
# the input is the array 
# the output is the value in the array that is repeated the most times
# first you need to find all the unique values in the array
# next you need to count how many times every unique value appears in that array
# next you need to display the value or values that occur most often in the array

# 2. Initial Solution
# def mode(array) 

# 	a2 = array.reduce(Hash.new(0)) { |a, b| a[b] += 1; a }

# 	def large(a2)
# 	array.max_by{|a,b| b}
# 	end

# end




# 3. Refactored Solution

def mode(array) 
	a2 = array.reduce(Hash.new(0)) { |a, b| a[b] += 1; a }
	def large(a2)
	a3 = a2.max_by{|a,b| b}
	end
puts a3[0]

end



# 4. Reflection 