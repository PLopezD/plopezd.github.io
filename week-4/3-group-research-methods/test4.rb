

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, 
            "Annabelle" => 2, "Ditto" => 5}



# Person 2
def my_hash_sorting_method(source)
  alphabatized_hash = source.sort_by {|key,value| key}
  age_hash = alphabatized_hash.sort_by {|key,value| value}
  Hash[age_hash].to_a
  
end



p my_hash_sorting_method(my_family_pets_ages) 


# [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 