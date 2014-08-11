# U2.W4: Refactor Cipher Solution


# I worked on this challenge with Raphaël Ho.


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    
    original_sentence = sentence.downcase
    encoded_sentence = []
    original_sentence.each_char do |element|
      if cipher.include?(element)
        encoded_sentence << cipher[element]
      elsif element == ' '
        encoded_sentence << spaces.sample
      else 
        encoded_sentence << element
      end
     end
    
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing?  This makes the (a..z) into an array

# 2. How does the rotate method work?  It shifts the value inputted forward 4 values in the array in this case,
# the last values are cycled back to the front. it then returns the new value.

# What does it work on? It is working on the alphabet array


# 3. What is `each_char` doing? It is iterating the code below over the each character in the string

# 4. What does `sample` do? Grabs a random value from an array 

# 5. Are there any other methods you want to understand better? .zip
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse? 
          # It looks better than both of our solutions. The way they defined the cipher was cleaner(required less lines)
          # than we had used.
# # 7. Is this good code? What makes it good? What makes it bad?
#       It is a good code. The variables are clearly labeled. The formatting is good, it uses best practice. It doesn't 
#       chain. It accomplishes the task in what appears to be the fewest lines possible.

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time? No, it is redefining the spaces in every instance
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")

# 5. Reflection 

# This was a good challenge,  we learned a few new methods which will be valuable going forward. I felt positive after this,
# my pair and I seemed on the similar levels as far as understanding the material so we were able to work through it fairly
# quickly which gave us confidence.  


