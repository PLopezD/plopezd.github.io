# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.

# 2. Pseudocode
# Very similar to the first boggle board project. I used a class there and continued to use it here. 
# Just had to add the create word function



# # 3. Initial Solution
# class BoggleBoard
# 	def initialize(board)
# 		@board = board
#  	end
#  	def get_row(rownumber)
#  		@board[rownumber].join
# 	end
#  	def get_col(colnumber)
#  		column = []
#  		@board.each {|p| 
#  			 column.push(p[colnumber])}
#  			 return column.join
# 	end
# 	def create_word(*coords)
#     coords.map { |coord| @board[coord.first][coord.last]}.join("")
#   end
# end
 
 
# dice_grid = [["b", "r", "a", "e"],
#              ["i", "o", "d", "t"],
#              ["e", "c", "l", "r"],
#              ["t", "a", "k", "e"]]
 
# boggle_board = BoggleBoard.new(dice_grid)
 
# puts boggle_board.create_word([1,2], [1,1], [2,1], [3,2])
# puts boggle_board.create_word([3,2])

# p boggle_board.get_row(0)
# p boggle_board.get_row(1)
# p boggle_board.get_row(2)
# p boggle_board.get_row(3)

# p boggle_board.get_col(0)
# p boggle_board.get_col(1)
# p boggle_board.get_col(2)
# p boggle_board.get_col(3)

# # dock
# # "brae"
# # "iodt"
# # "eclr"
# # "take"
# # "biet"
# # "roca"
# # "adlk"
# # "etre"


# 4. Refactored Solution
class BoggleBoard
	def initialize(board)
		@board = board
 	end
 	def get_row(rownumber)
 		@board[rownumber].join
	end
 	def get_col(colnumber)
 		column = []
 		@board.each {|p| 
 			 column.push(p[colnumber])}
 			 return column.join
	end
	def create_word(*coords)
    coords.map { |coord| @board[coord.first][coord.last]}.join("")
  end
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 
puts boggle_board.create_word([1,2], [1,1], [2,1], [3,2])
puts boggle_board.create_word([3,2])

p boggle_board.get_row(0)
p boggle_board.get_row(1)
p boggle_board.get_row(2)
p boggle_board.get_row(3)

p boggle_board.get_col(0)
p boggle_board.get_col(1)
p boggle_board.get_col(2)
p boggle_board.get_col(3)

# dock
# "brae"
# "iodt"
# "eclr"
# "take"
# "biet"
# "roca"
# "adlk"
# "etre"


# 1. DRIVER TESTS GO BELOW THIS LINE

describe BoggleBoard do
  let(:boggle_board) {BoggleBoard.new(dice_grid)}

describe '#initialize' do
	 it "expects a single argument" do
      expect(BoggleBoard.instance_method(:initialize).arity).to eq 1
    end
  end

    describe '#get_row' do
    it "is defined" do
      expect(BoggleBoard.method_defined?(:get_row)).to be true
    end
        it "expects a single argument" do
      expect(BoggleBoard.instance_method(:get_row).arity).to eq 1
    end
        it "returns i o d t when argument = 1" do
      expect(boggle_board.get_row(1)).to eq("iodt")
   end

end

  describe '#get_col' do
    it "is defined" do
      expect(BoggleBoard.method_defined?(:get_col)).to be true
    end
 it "expects a single argument" do
      expect(BoggleBoard.instance_method(:get_col).arity).to eq 1
    end
     it "returns a d l k when argument = 2" do
      expect(boggle_board.get_col(2)).to eq("adlk")
   end
  end
  describe '#create_word' do
  	it "returns K at code (3,2)" do
  		expect(boggle_board.create_word([3,2])).to eq("k")
  	end
  end

end 

# 5. Reflection 
# My code didn't grow a lot by using object-oriented programming. 
# I added a method that I had not previously used but that would have occured either way.
# The following passage, which I read in someone else's reflection, helped me wrap my head around the 
# difference between procedural programming and OOP:
# "Whereas procedural programming uses procedures to operate on data structures, object-oriented 
# programming bundles the two together so an "object" operates on its "own" data structure."

# Using objects constantly allows us to create sub-objects of sorts which can allow us to use different 
# overlapping attributes. Overall this project was fun but tedious.



