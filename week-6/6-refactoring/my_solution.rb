# U2.W6: Refactoring for Code Readability


# I worked on this challenge with Thomas Abend.


# Original Solution
# Josh Nixon's Solution: https://github.com/JackMarx/phase-0-unit-2/blob/master/week-5/6-validate-credit-card/my_solution.rb

class CreditCard

  def initialize(card)
# Checks if a 16 digit string is being entered. Raises argument error if not.
    if card.to_s.size != 16
      raise ArgumentError.new("Credit card number must be 16 digits long") 
# Sets instance variable @stop to true, thus not running anything else (seems unnecessary)
	  @stop = true
	else
# Sets instance variable card to the inputted card
	  @card = card
# Sets instance variable stop to false
	  @stop = false
	end
  end
# Check card runs check_card1
	def check_card
		check_card1
	end
# sets check_card1 to private
	private

	def check_card1
# unnecessary stop conditional allows program to run.
		if @stop == false
# sets new variable card array to @card as a string, reversed by character mapped back to integers
# This gives us an array of each integer separated and in reverse order.			
			card_array = @card.to_s.reverse.chars.map(&:to_i)
# Defines index as 15 (16 digits 0 to 15). Poor form to call a variable index?
		    index = 15
# Loop through card_array by steps of two. Starts at the end of the array.
# Each time multiple the character by two and make it a string.		    
		    until index <= 0
		    	card_array[index] = (card_array[index].to_i * 2).to_s
		    	index -= 2
		    end
# Card array changes every element to a string then maps the characters to integers
# then use reduce to add them all together then checks if it's evenly divisible by 10 and returns
# true if it is and false if it is not.
		   	((card_array.to_s.chars.map(&:to_i)).reduce :+) % 10 == 0 ? true : false
		else
# unnecessary stop conditional			
			false
		end
	end
end


# Refactored Solution

class CreditCard
  def initialize(card)
# Checks if a 16 digit string is being entered. Raises argument error if not.
     raise ArgumentError.new("Credit card number must be 16 digits long") if card.to_s.size != 16
	 @card = card.to_s.split('')
  end

  def check_card
# sets new variable card array to @card as a string, reversed by character mapped back to integers
# This gives us an array of each integer separated and in reverse order.			
    card_array = @card
    card_array.each_with_index { |x, i| card_array[i] = (card_array[i].to_i * 2).to_s if i.even?}
# Card array changes every element to a string then maps the characters to integers
# then use reduce to add them all together then checks if it's evenly divisible by 10 and returns
# true if it is and false if it is not.
	((card_array.join('').split('').map(&:to_i)).reduce :+) % 10 == 0 ? true : false
  end
end




# DRIVER TESTS GO BELOW THIS LINE

visa = CreditCard.new(1111222233334444)
#p visa.check_card == true
mastercard = CreditCard.new(1000200030004000)
#p mastercard.check_card == true
american_express = CreditCard.new(5555555555555555)
#p american_express.check_card == false
discover = CreditCard.new(9384716218273649)
#p discover.check_card == false

# 4. Convert your driver test code from that challenge into Assert Statements
def assert
  raise "Assertion failed!" unless yield
end

assert {visa.check_card}
assert {mastercard.check_card}
assert {american_express.check_card == false}
assert {discover.check_card == false}
assert {CreditCard.instance_method(:initialize).arity == 1}
assert {CreditCard.instance_method(:check_card).arity == 0}
# Reflection 
# This was a good project to pair on, my partner was able to help me with a syntactical error I was having with my assert methods which I appreciate.
# It was also nice to see the different ways people did the credit card project and refactor some of their work but still keep the parts we liked.
# Overall I left this feeling confident and looking forward to the rest of the week.