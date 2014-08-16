# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a new array
# Output: a new dice with the same qualities of a regular dies but but returning an array value
# Steps:
# redefine our prior dice with array specific methods


# 3. Initial Solution

# class Die
#   def initialize(sides)
# 	unless sides.class? = Array
#     	raise ArgumentError.new("You must enter an array")
#   end
#   	@sides = sides
#   end

#   attr_accessor :sides
  
#   def sides
#     return @sides
#   end
  
#   def roll
#   	sides.sample
#   end
# end



# 4. Refactored Solution

class Die
  def initialize(sides)
  	unless sides.is_a?(Array) & sides.empty? == false
      	raise ArgumentError.new("You must enter an array with a value")
    end
    	@sides = sides
    end
    def sides
      return @sides.size
    end
    def roll
    	@sides.sample
    end
  end

# # 1. DRIVER TESTS GO BELOW THIS LINE
# test2: checks that the array entered to the dice class is not empty
# test3: tests thats the #sides method takes no arguments
# test4: test that the #roll method returns the number of sides entered on the init array
# test6: tests that the dice returns a single letter if an array of the alphabet is entered

# 5. Reflection 
# This was a good project to continue to learn about class generation. I learned here to be careful when
# calling @sides vs regular "sides" in the code. I also applied some new array methods I had not 
# previously used. This project also showed the progression in my thought process. Initially my 
# intention was to create a hash, number every element in the array 1 to x and run a rand() on 
# those numbers to return the key. Then i remembered half way through working that the sample just 
# randomly selects a value from the array for me without the extra steps.
