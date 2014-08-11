
i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

def my_array_deletion_method(source, thing_to_delete)

		source.each do |x|
		if x.include?(thing_to_delete)
				source.delete(x)
		end
	end
end






 p my_array_deletion_method(i_want_pets, "a") 


 # source.delete_if {|element|	element.include?(thing_to_delete)}