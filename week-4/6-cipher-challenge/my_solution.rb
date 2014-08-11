# U2.W4: Cipher Challenge


# I worked on this challenge with: .



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs. #split = ""
  decoded_sentence = []
  # cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
    #        "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
     #       "g" => "c", 
      #      "h" => "d", 
       #     "i" => "e", 
        #    "j" => "f", 
         #   "k" => "g",
          #  "l" => "h",
           # "m" => "i",
            #"n" => "j",
            #"o" => "k",
            #"p" => "l",
            #"q" => "m",
            #"r" => "n",
            #"s" => "o",
            #"t" => "p",
            #"u" => "q",
            #"v" => "r",
            #"w" => "s",
            #"x" => "t",
            #"y" => "u",
            #"z" => "v",
            #"a" => "w",
            #"b" => "x",
            #"c" => "y",
            #"d" => "z"}
                  
            def cipher(xxx)
                
                alphabet = [*("a" .. "z")]
                trueletter = alphabet.index(xxx)
                fuck = trueletter.to_i - 4
                alphabet[fuck]
            end
      
  $pp = []
    input.each do |variable|
    o = cipher(variable)
    $pp = $pp << (o)
  end
      # Still trying to figure out why this doensn't work, it works on another test but when I copy and paste it here it fails..

            
            #input .. move it down the alphabet 4 spaces
            #find the input letter in our alphabet array
            #alphabet[7] = alphabet[7+shift]
            #go through each letter probably using .each .. and just go through everything one by one
            #cover special cases
            #number integer thing
            #print out the new shit
            
  $pp.each do |x| # What is #each doing here? Applying a method to each of the items an array.
  
  #input is ["a","b","c"]
  #each is doing applying block of code to EACH item in input 
 # a = [ "a", "b", "c" ]
 #  a.each {|x| print x, " -- " }
 #=  a -- b -- c --
  
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    #looking for match...
    
    cipher.each_key do |y| # What is #each_key doing here?
   # h = { 
   #   "a" => "w", 
   #   "b" => "x" 
   #   key => value
   #   }
#h.each_key {|key| puts key }
#produces:
#a
#b
    
    
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
      # x = the coded letter we are given /string
      # y = decoded letter that the cipher produces /KEY=>VALUE part of the hash.. it's the first part (KEY) /string
      # x == y is testing to see if it's a match
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        #putting the decoded letter into decoded_sentence
        found_match = true #found the match!
        break  # Why is it breaking here?  because we found a match in the cipher hash!
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
      #interpret any of these special characters as a space and then push the space " " into the array
        decoded_sentence << " "
        found_match = true
        break #if this condition exists, break out of the if loop
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
      
      # a = [ "a", "b", "c" ]
#a.include?("b")   #=> true
#a.include?("z")   #=> false
        decoded_sentence << x #if x is an integer, just push the integer to decoded_sentence
        found_match = true
        break #added the integer, break out of the loop!
      end 
    end
    if not found_match  # What is this looking for? #unless found match or !found_match
      decoded_sentence << x #if its NONE OF THE ABOVE, just put it in.. (like exclamation point or punctuation)
    end
  end
  decoded_sentence = decoded_sentence.join("")#combines the elements of the array
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
  
  #/\d/ - A digit character ([0-9]) 
  #checks decoded_sentence for a positive number..
  #10000 -> integer(num) => divide by 100 = 100
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning? #the converted sentence array.. the MF answer!        
end

# Your Refactored Solution





# Driver Test Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver test code as well. Driver test code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
 