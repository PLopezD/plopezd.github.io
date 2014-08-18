# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Alex Trost.

# 2. Pseudocode

# Input: 16 digit credit card number 
# Output: true or false 
# # Steps: 
# 1. Make the string of numbers and spaces into an array of just numbers.
# 2. If odd, double number. And add to a new array. 
# 3. Split double digit numbers by character. 
# 4. Sum new array
# 5. See if sum has remainder when divided 10, if not = true, if yes = false


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(cardnumber)
#     @cardnumber = cardnumber

#     num = @cardnumber.to_s
#     @cardarray = []
#     @cardarray = num.split(//).map{|i| i.to_i}
    
#     if @cardarray.length != 16 
#       raise ArgumentError.new"Number must be 16 digits long"
#     end
#   end 
  
#  def check_card
#   @newarray = []
#   @newarray = @cardarray.each_with_index {|number, n| @cardarray[n] *= 2 if n.even? }
   
#   @sumarray = []
#   @sumarray = @newarray.join("").split("").map{|i| i.to_i}
#   sum = 0
#   @sumarray.each {|add| sum += add }
  
#    if 
#     sum.to_i % 10 == 0
#     true
#   else 
#     false
#   end  
#  end
#    end

# 4. Refactored Solution

class CreditCard
  def initialize(cardnumber)
    @num = []
    @num = cardnumber.to_s.split(//).map{|i| i.to_i}
    if @num.length != 16 
      raise ArgumentError.new"Number must be 16 digits long"
    end
  end 
 def check_card
     @newarray = []
  @newarray = @num.each_with_index {|number, n| @num[n] *= 2 if n.even? }.join("").split("").map{|i| i.to_i}
  sum = 0
  @newarray.each {|add| sum += add }
      sum.to_i % 10 == 0
 end
end


# 5. Reflection 

# This was a tricky challenge but a good learning experience. My partner and I  went back and forth on
#  how to accomplish different 'steps' of this and in the end  i think we found one of the fastest
#  ways to accomplish it, using just 15 lines. My partner also taught me the .map method which 
#  is very valuable though still slightly confusing. We also ran into some issues where things where
#  not defining themselves as arrays when we felt they should have so that was a bit of 
#  a headache but in the end we prevailed. I am feeling confident. 



