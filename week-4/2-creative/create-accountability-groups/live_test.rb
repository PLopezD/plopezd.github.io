
bumblebees = ["Courtney","Daniel","Edward","Edwin","Joseph","Kevin","Kris",
"Landey","Pablo","Robert","Salomon","Sean","Stephanie","Thomas","Zachary"]

array = bumblebees


def creator(array)

		alpha = array & bravo = array & charlie = array
	

		
			alpha.shuffle!
			g11 = alpha.pop(4)
			g12 = alpha.pop(4)
			g13 = alpha.pop(4)
			g14 = alpha.pop(4)
			p "Unit one group one is "+g11.join(" ,")+"."
			p "Unit one group two is "+g12.join(" ,")+"."
			p "Unit one group three is "+g13.join(" ,")+"."
			p "Unit one group four is "+g14.join(" ,")+"."

			bravo.shuffle!
			g21 = bravo.pop(4)
			g22 = bravo.pop(4)
			g23 = bravo.pop(4)
			g24 = bravo.pop(4)
			p "Unit two group one is "+g21.join(", ")+"."
			p "Unit two group two is "+g22.join(", ")+"."
			p "Unit two group three is "+g23.join(", ")+"."
			p "Unit two group four is "+g24.join(", ")+"."

			charlie.shuffle!
			g31 = charlie.pop(4)
			g32 = charlie.pop(4)
			g33 = charlie.pop(4)
			g34 = charlie.pop(4)
			p "Unit three group one is "+g31.join(", ")+"."
			p "Unit three group two is "+g32.join(", ")+"."
			p "Unit three group three is "+g33.join(", ")+"."
			p "Unit three group four is "+g34.join(", ")+"."

end

creator(array)