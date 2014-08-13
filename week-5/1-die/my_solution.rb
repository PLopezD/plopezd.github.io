# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: # of sides of the dice
# Output: a roll falling betewen the range of the number of sides and 1
# Steps: 
# # 1. create a class called Die that takes 1 variable (#of sides)
# 2. have it return an error if there is less than 1 sides
# 3. roll by using the rand function


# 3. Initial Solution

# class Die
#   def initialize(sides)
# 	unless sides.is_a?(Number) > 1
#     	raise ArgumentError.new("Only numbers are allowed and they must be greater than 1")
#   end
#   	@sides = sides
#   end
  
#   def sides
#     puts "#{sides}"
#   end
  
#   def roll
#   	rand(sides)
#   end
# end



# 4. Refactored Solution
class Die
  def initialize(sides)
	unless sides > 1
    	raise ArgumentError.new("Number of sides must be greater than 1")
  end
  	@sides = sides
  end

  attr_accessor :sides
  
  def sides
    return @sides
  end
  
  def roll
  	rand(1..sides)
  end
end






# # 1. DRIVER TESTS GO BELOW THIS LINE
# test1: makes sure class "Die" takes one argument
# test2: checks that we have an argument error if sides < 1
# test3: checks that Die class .arity returns 0. .arity is supposed to return n-1 where n is the number of 
# variables a method takes
# test4: checks the same as above but for sides method
# test5: checks that roll returns a whole number less than the number of sides of the dice


# 5. Reflection 

# I felt this was a good lesson to start learning about classes on. It gave me confidence and got
# me excited to move forward on week 5. Nothing too tricky here. 