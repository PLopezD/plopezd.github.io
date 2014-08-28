# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
# start a PezDispenser class
# initialize it with an array 
# method 1: count - count the number of things in the array
# method 2: take - .pop(value) to get a a pez out, this is destructive
# method 3: add_pez - << to end of array to add a pez, this is destructive
# use attr:reader on the array


# 3. Initial Solution

# class PezDispenser
# 	attr:reader @pezarray

# 	initialize(pezarray)
# 		@pezarray = pezarray 
# 	end

# 	def count
# 		@pezarray.count
# 	end

# 	def eat_pez(color)
# 		@pezarray.delete(color)
# 	end

# 	def add_pez(flavor)
# 		@pezarray << flavor
#  	end
# end
 


# 4. Refactored Solution

class PezDispenser
	
	def initialize(pezarray)
		@pezarray = pezarray 
	end

	def pez_count
		@pezarray.count
	end

	def get_pez
		@pezarray.pop
	end

	def add_pez(flavor)
		@pezarray << flavor
 	end

 	def see_all_pez
 		p @pezarray
	end
end 

# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

def assert
  raise "Assertion failed!" unless yield
end
assert {PezDispenser.instance_method(:add_pez).arity == 1}
assert {PezDispenser.instance_method(:see_all_pez).arity == 0}
assert {super_mario.pez_count == 9}
assert {super_mario.pez_count != 10}
assert {super_mario.see_all_pez.include? "lemon"}
assert {true unless super_mario.see_all_pez.include? "butt" }

# 5. Reflection 
# This was a fun project. a good review of fundamentals already covered. Glad to see "stories" again as I know they are
# a huge part of working as a developer. This wasn't too time consuming but a good reiteration of fundamentals.
# I am leaving confident and ready to push forward. 