# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.grep(/#{thing_to_find}/)
end

def my_hash_finding_method(source, thing_to_find)
  source.reject{|k,v| v != thing_to_find}.keys
end

# Identify and describe the ruby method you implemented. 
# 
#The array is using a .grep to return an array of patterns (in this case an arbitrary regexp) which is equivalent to 
#the variable thing_to_find. In other wordes, the grep is taking anything that matches the "thing_to_find" and putting it into a new array.
#The hash method takes the source (hash), and destructively culls the hash items that do not have values equivalent 
#to the "thing_to_find" variable. It then calls the method ".keys" which returns the keys associated with the value in an array.

# Person 2
def my_array_modification_method(source, thing_to_modify)
    newarray = []
    source.each do |original|
      if original.class == Fixnum
        newarray << original+thing_to_modify
      else  
        newarray << original
    end
  end
  return source.replace(newarray)
end


def my_hash_modification_method(source, thing_to_modify)
  source.each  {|key, value| 
     newvalue = value + thing_to_modify 
     source[key] = newvalue}
  end

# # Identify and describe the ruby method you implemented. 
# # I used the .each method to iterate over every element of the array/hash
# # This allowed me to pick out which elements in the array were numbers and add to them only while leaving the remaining elements alone
# # It also allowed me to change the values for every element of the hash while leaving the key alone


# Person 3
def my_array_sorting_method(source)
  new_array = source.map{|a| a.to_s} #originally had a problem where i couldnt compare string with an integer
  new_array.sort!{|x,y| x <=> y} #returns either -1,0,1
  new_array
end

def my_hash_sorting_method(source)
  alphabatized_hash = source.sort_by {|key,value| key}
  age_hash = alphabatized_hash.sort_by {|key,value| value}
end

# Identify and describe the ruby method you implemented. 
# i used map to change all the elements of the array into a string
# i used sort! and the spaceship operator to quickly put things in order

# for the hash i used sort_by on the keys to alphabatize everything
# i then used sort_by on the values to put the ages in ascending order



# Person 4

def my_array_deletion_method(source, thing_to_delete)

    source.each do |x|
    if x.include?(thing_to_delete)
        source.delete(x)
    end
  end
end


def my_hash_deletion_method(source, thing_to_delete)

      newarray = source.reject{|k,v| k == thing_to_delete}

end
# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER TEST CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly AND you have the code for each of the methods. 

# Person 1
p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]

#Person 2
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

#Person 3
#This driver code will only pass if you have the code from Person 2! If you don't have it, copy/modify it so you can
#test whether your method works.
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 

#Person 4
#This driver code will only pass if you have the code from Person 2!If you don't have it, copy/modify it so you can
#test whether your method works.
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# This was a great project to work on with a group. Since we had a three person group we were forced to come together at the end to do the "person 4" task.
# In doing so we found kinks in each others code as we worked through every persons work and we were able to better one another significantly.
# We left this challenge feeling confident and having had fun working together. I look forward to my next group project.
# 
# 
