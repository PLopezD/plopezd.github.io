# # U2.W5: Build a simple guessing game SOLO CHALLENGE


# # I worked on this challenge [by myself, with: ].

# # 2. Pseudocode

# # Input:  answer  = locked in, guesses to try to match my answer
# # Output: :high, :low: correct
# # Steps: 
# have the init make the answer an attribute
# have guesses state whether they are greater than or less than the attribute :answer
# if the guess is correct, return correct 
# 	 record the last guess method as the last attempt to guess and record the last result as 
# 	 that was high or low


# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)
#     if answer == "" 
# 		raise ArgumentError.new("Can't do that")
# 		attr_accessor :answer

# 	end
	
#   end

# 	def guess(guess) 
# 		if guess > answer
# 			:high
# 		elsif guess < answer 
# 			:low
# 		else
# 			:correct
# 	end

# 	 def solved?
# 	 	guess == answer
# 	 end

	  
# end



# 4. Refactored Solution
class GuessingGame
  def initialize(answer)
	@answer = answer.to_i    
  end
	def guess(guess)
		guess.to_i 
		@last_guess = guess
		if guess > @answer
			return :high
		elsif 	guess < @answer 
			return :low
		else
			return :correct
		end

	end
	 def solved?
	 	@last_guess == @answer
	 end
end





# 1. DRIVER TESTS GO BELOW THIS LINE

# Test on line #17 = testing that guess takes an argument
# Test on line #25 = testing that low is returned when the guess is low
# Test on line #45 = testing that guess reflects the last guess


# 5. Reflection 
# This was a good lesson in understanding classes again. The location of the @last_guess was throwing
# me off for some time. I am still not entirely clear why if I put it under my if statement is doesn't
# rename @last_name. After the if is fulfilled it should just to the end of the if, not the end of
# the method. I will follow-up with someone to get this answered.


