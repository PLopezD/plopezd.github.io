# U3.W8-9: Numbers to English Words


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# method in_words(variable that is an integer)
# 	variable less than 20 or equal to 100
# 	hash key is number and value returned is the string equivalent

# 	hash numbers twenty, thirty, forty, fifty, etc.
# 	and one through nine

# 3. Initial Solution

def in_words(number)

smallhash = {1 => "One",
             2 => "Two",
             3 => "Three",
             4 => "Four",
             5 => "Five",
             6 => "Six",
             7 => "Seven",
             8 => "Eight",
             9 => "Nine",
             10 => "Ten",
             11 => "Eleven",
             12 => "Twelve",
             13 => "Thirteen",
             14 => "Fourteen",
             15 => "Fifteen",
             16 => "Sixteen",
             17 => "Seventeen",
             18 => "Eighteen",
             19 => "Nineteen",
         	 100 => "One Hundred",
         	 0 => ""
         	}


bighash = {2 => "Twenty",
           3 => "Thirty",
           4 => "Fourty",
           5 => "Fifty",
           6 => "Sixty",
           7 => "Seventy",
           8 => "Eighty",
           9 => "Ninety"
       	}

     if number < 20 || number == 100
     	then smallhash[number]
     else
     	digit_array = number.to_s.split('').map { |number| number.to_i }
     	bighash[digit_array.first] + " " + smallhash[digit_array.last]

     end
end



# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE


def assert 
    if yield
        puts "P :)"
    else
        puts "F :("
    end
end

assert {in_words(4) == "Four"}
assert {in_words(27) == "Twenty Seven"}
assert {in_words(92) == "Ninety Two"}


# 5. Reflection 
# This was a fun project, my partner and I had some issues figuring it out and are still not totally sure we found the most efficient way but 
# it was fun working  to work on and think through. We will be looking around for better solutions to this soon.