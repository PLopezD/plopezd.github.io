xx = ["a","b","c","d"]


def cipher(input)
                
                alphabet = [*("a" .. "z")]
                trueletter = alphabet.index(input)
          		return alphabet[trueletter - 4]
        end

        # p cipher("f")
        
	$pp = []

		xx.each do |variable|
	
		o = cipher(variable)
		$pp = $pp << (o)
	end

p $pp


