
i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}



def my_hash_deletion_method(source, thing_to_delete)

	newarray = source.reject{|k,v| k == thing_to_delete}

 	 newarray.each  {|key, value| 
  	 newvalue = value + 2
  	 source[key] = newvalue}
  	 return newarray
end


p my_hash_deletion_method(my_family_pets_ages, "George") 