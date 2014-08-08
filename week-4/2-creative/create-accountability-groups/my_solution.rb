# U2.W4: Create Accountability Groups

# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: Array of all the students
# Output: sets of 4 randomly selected students with no repeats
# Steps:
# 1: shuffle the array
# 2: pop out 4 students and add them to the array (repeat until original array is empty)
# 3: repeat this 4 times until group 1 is closed, then chomp and add to group 2
# 4: repeat until starting array is empty (3 groups of 4 and 1 group of 3)
# 5: repeat 3 times, one for each unit


# 3. Initial Solution
# bumblebees = ["Courtney","Daniel","Edward","Edwin","Joseph","Kevin","Kris",
# "Landey","Pablo","Robert","Salomon","Sean","Stephanie","Thomas","Zachary"]
# array = bumblebees

# def creator(array)
# 	def unit1(array)
# 		array.shuffle
# 		g11 = array.pop(4)
# 		g12 = array.pop(4)
# 		g13 = array.pop(4)
# 		g14 = array.pop(4)
# 		puts "Unit one group one is "+g11.join(" ,")+"."
# 		puts "Unit one group two is "+g12.join(" ,")+"."
# 		puts "Unit one group three is "+g13.join(" ,")+"."
# 		puts "Unit one group four is "+g14.join(" ,")+"."
# 	end
# end



# # 4. Refactored Solution
# bumblebees = ["Courtney","Daniel","Edward","Edwin","Joseph","Kevin","Kris",
# "Landey","Pablo","Robert","Salomon","Sean","Stephanie","Thomas","Zachary"]
# array = bumblebees

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

# 1. DRIVER TESTS GO BELOW THIS LINE
describe 'creator' do
  let(:array_1) {["Courtney","Daniel","Edward","Edwin","Joseph","Kevin","Kris",
 "Landey","Pablo","Robert","Salomon","Sean","Stephanie","Thomas","Zachary"]}

  it "is defined" do
    expect(defined? creator).to eq 'method'
  end
  

  it "requires a single argument" do
    expect(method(:creator).arity).to eq 1
    end

  # it "returns a string" do
  #   expect(creator(array_1)).to_s
  # end - Will have to think of a test to prove that I returned 
end


# 5. Reflection 
# This was a good challenge, half way through i decided to pivot and try another 
# method to reach the same goal. I am a little dissapointed I couldn't think of a 
# good driver test to say "expect the method to equal 12 random groups of 4"
# I will post on the Google form to  see if anyone else could figure that out.

