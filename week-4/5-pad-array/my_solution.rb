# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# # 1. Pseudocode

# The input is a number of slots and possibly an element that is to be inserted into those slots
# The output is an array with the number of slots inputted and filled with nil or the element 
# that was entered by the user.
# # What are the steps needed to solve the problem?
# for #pad! 
# Count the number of variables listed.
# if 1,
# Count the size of the original array, less the number of characters in the variable
# This is the number of padded fields that need to be added to the array.
# add them to the array using .fill
# if 2 then 
# 	Count the size of the original array, less the number of characters in the variable
# 	This is the number of padded fields that need to be added to the array.
# 	again, add them to the end of the array using .fill but with the variable inputted
# for #pad  do the same but add do not change the original array



# 2. Initial Solution

<<<<<<< HEAD
# class Array
#   def pad(min, string=nil)
#     rarray = self.clone
#     if self.size >= min
#       return rarray
#     else
#       difference = min - self.size
#       for x in 1..difference
#         rarray.push(string)
#       end 
#       return rarray
#     end
#   end

#   def pad!(min, string = nil)
#     if self.size > min
#       return self

#     else
#       difference  = min - self.size 
#       for x in  1..difference
#         self.push string
#         return self
#           end
#         end 
#       end

# end
=======
class Array
>>>>>>> upstream/master

  def pad
    #code goes here
  end

  def pad!
    #code goes here
  end

end


# 3. Refactored Solution
class Array
  def pad(min, string=nil)
    rarray = self.clone
    if self.size >= min
      return rarray
    else
      difference = min - self.size
      for x in 1..difference
        rarray.push(string)
      end 
      return rarray
    end
  end

  def pad!(min, string = nil)
    if self.size > min
      return self
    else
      difference  = min - self.size 
      for x in  1..difference
        self.push(string)
          end
        return self
    end 
  end
end


# # 4. Reflection 
# I appreciated the look at classes and iterations, it was good to see the syntax for those. I feel there
# are a lot of ways to accomplish this one as well, possibly using the .fill function may have been 
# another option. I wish i had worked on this one with
# a partner :P, it would have been interesting to see diffrent trains of thought.
