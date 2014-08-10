def north_korean_cipher(text, shift = 4)
	letters = [*("a".."z")]
	a_text = text.split("")
	e_text = ""
	a_text.each do |var|
		if
				var == "@" || var == "#" || var == "$" || var == "%"|| var == "^" || var == "&"|| var == "*" 
        		e_text += " "
        	else
		letters.each do |letter|
			if var.downcase == letter
				e_text += (letters[letters.index(letter) - shift]).to_s
			end
			end
		end
	end
	puts e_text	
end


p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver test code as well. Driver test code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")
