# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Write a method that takes a row number and returns all the elements in the row

# # Pseudocode
# since our board is an array, if you just call the array(n) where n is the variable 
# of the row you want you will get all the elements of that row

# # Initial Solution
# class Boggle_board
# 	def initialize(board)
# 		@board = board
#  	end
#  	def get_row(rownumber)
#  		return board(rownumber)
# 		end

# end


# Refactored Solution

# class Boggle_board
# 	def initialize(board)
# 		@board = board
#  	end

#  	def get_row(rownumber)
#  		@board[rownumber]
#  		@rownumber = rownumber
# 	end
 	
#  	def get_col(colnumber)
#  		@board[rownumber][colnumber]
# 	end


# end


# test = Boggle_board.new(boggle_board)
# p test.get_row(1)

# # # DRIVER TESTS GO BELOW THIS LINE
# describe Boggle_board do
#   let(:rowtest) {Boggle_board.new(boggle_board)}

# describe '#initialize' do
# 	 it "expects a single argument" do
#       expect(Boggle_board.instance_method(:initialize).arity).to eq 1
#     end
#   end

#     describe '#get_row' do
#     it "is defined" do
#       expect(Boggle_board.method_defined?(:get_row)).to be true
#     end

#     # it "returns : when variable is 0 " do    < -- *ask*
#     #   expect(rowtest.get_row(0)).to eq "["b", "r", "a", "e"]"
#     # end
# end
# end
# p test.get_row(0) == ["b", "r", "a", "e"]
# p test.get_row(1) == ["i", "o", "d", "t"]
# p test.get_row(2) == ["e", "c", "l", "r"]
# p test.get_row(3) == ["t", "a", "k", "e"]

# Reflection 
# This  portion was fairly straight forward. It annoyingly took me a 20 minute detour to realize i needed to call the "rownumber" using [] rather than ().
# # Probably shouldn't be doing this stuff at 1am :\ sorta silly. I will have to clean up my driver tests. All in all,  a good confidence boost and a 
# fun project.


#-------------------------------------------------------------------------------

# Part 2: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# # Initial Solution
# class Boggle_board
# 	def initialize(board)
# 		@board = board
#  	end

#  	def get_row(rownumber)
#  		@board[rownumber]
#  		@rownumber = rownumber
# 	end
 	
#  	def get_col(colnumber)
#  		@board[rownumber][colnumber]
# 	end


# end

# # Refactored Solution
class Boggle_board
	def initialize(board)
		@board = board
 	end
 	def get_row(rownumber)
 		@board[rownumber]
	end
 	def get_col(colnumber)
 		column = []
 		@board.each {|p| 
 			 column.push(p[colnumber])}
 			 return column
	end
end

# test = Boggle_board.new(boggle_board)
# p test.get_row(2)
# p test.get_col(1)
# p test.get_col(3)


# DRIVER TESTS GO BELOW THIS LINE


describe Boggle_board do
  let(:rowtest) {Boggle_board.new(boggle_board)}

describe '#initialize' do
	 it "expects a single argument" do
      expect(Boggle_board.instance_method(:initialize).arity).to eq 1
    end
  end

    describe '#get_row' do
    it "is defined" do
      expect(Boggle_board.method_defined?(:get_row)).to be true
    end
        it "expects a single argument" do
      expect(Boggle_board.instance_method(:get_row).arity).to eq 1
    end
        it "returns i o d t when argument = 1" do
      expect(rowtest.get_row(1)).to eq(["i", "o", "d", "t"])
   end

end

  describe '#get_col' do
    it "is defined" do
      expect(Boggle_board.method_defined?(:get_col)).to be true
    end
 it "expects a single argument" do
      expect(Boggle_board.instance_method(:get_col).arity).to eq 1
    end
     it "returns a d l k when argument = 2" do
      expect(rowtest.get_col(2)).to eq(["a", "d", "l", "k"])
   end
end
end
# Reflection 
# Logically this seemed very simple as well. I was once again thrown through the ringer on syntax. I don't understand why
# why i tried to add to my "column" array in the "get_col" function using << instead of .push it did not work. I kept getting
# an error saying "no implicit conversion of Array to String". I will have to follow up on why that doesn't work as I feel it 
# shows a basic lack of knowledge of elements. Otherwise this was a good project, left me feeling confident. 



