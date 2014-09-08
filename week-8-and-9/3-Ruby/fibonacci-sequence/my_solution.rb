# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
# 3. Initial Solution

# def is_fibonacci?(num)
# 	x = 0
# 	y = 1
# 	z = 0
# 	fibarray = []
# 	fibarray << x
# 	fibarray << y
# 	  while z < 8670007398507948658051921
# 		z = x + y
# 		fibarray << z
# 		x = y
# 		y = z 
# 	  end
	
# 	 p fibarray.include?(num)

# end

# 4. Refactored Solution
def is_fibonacci?(num)
	x = 0
	y = 1
	z = 0
	fibarray = []
	fibarray << x
	fibarray << y
	  while z < 8670007398507948658051921
		z = x + y
		fibarray << z
		x = y
		y = z 
	  end
	 p fibarray.include?(num)
end

# 1. DRIVER TESTS GO BELOW THIS LINE
# rspec in folder

# 5. Reflection 