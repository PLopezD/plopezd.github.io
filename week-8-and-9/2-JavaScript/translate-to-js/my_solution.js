
// U3.W8-9: Challenge you're converting


// I worked on this challenge with Josh Nixon.

// 2. Pseudocode
// # input a grid or boogle board
// # define a method that selects an entire row
// # define a method that selcts an entire column
// # def method that selects multiple elements at once
// # method should take arguments for the board aka nested arrays and multiple pairs of coordinates.



// Ruby solution

// class BoggleBoard

//   	def initialize(grid)
//   		@grid = grid
//   	end

//   	def create_word(*pairs)
// 		pairs.map {|r,c| @grid[r][c]}
// 	end

// 	def get_row(row)
// 	    @grid [row]
// 	end

// 	def get_col(col)
// 	    (0...@grid.count).map { |rows| @grid[rows][col]}
// 	end
 
// end
 
 
// dice_grid = [["b", "r", "a", "e"],
//              ["i", "o", "d", "t"],
//              ["e", "c", "l", "r"],
//              ["t", "a", "k", "e"]]
 
// boggle_board = BoggleBoard.new(dice_grid)


//# ruby driver code

// def assert
//   raise "Assertion failed!" unless yield
// end

// assert {boggle_board.get_row(2) == ["e", "c", "l", "r"]}
// assert {boggle_board.get_row(0) == ["b", "r", "a", "e"]}
// assert {boggle_board.get_col(1) == ["r", "o", "c", "a"]}
// assert {boggle_board.get_col(3) == ["e", "t", "r", "e"]}
// assert {boggle_board.create_word([1,0],[2,1],[3,3]) == ["i", "c", "e"]}
// assert {boggle_board.create_word([3,0],[0,2],[3,2],[3,3]) == ["t", "a", "k", "e"]}
// assert {boggle_board.create_word([2,1],[1,1],[2,3],[1,2]) == ["c", "o", "r", "d"]}
// assert {boggle_board.create_word([0,0],[1,0],[2,3],[1,2]) == ["b", "i", "r", "d"]}
// assert {boggle_board.create_word([3,2]) == ["k"]}




// 3. Initial Solution


// var BoggleBoard = {
//     init: function(gridArray) {
//         this.grid = gridArray;
//     },
//     findRow: function(row) {
//         console.log(this.grid[row]);
//     }
//     // findColumn: function(column) {
//     //     for (var x = 0; x < column; x++)
//     //      console.log(this.grid[])
//     // }

// // 	findColumn: function() {
// // 	// console.log(this.grid.length)
// // for (var i = 0; i < this.grid.length; i ++) {
// //     console.log(this.grid[i]);
// }


//     findLetter: function(row2,col2) {
//         console.log(this.grid[row2][col2]);
//     }
//     // findWord: function() {
//     //     console.log(this.grid);
//     // }
// };
// var newtest = Object.create(BoggleBoard);  // <== one level of inheritance

// newtest.init(
// 			[["b", "r", "a", "e"],
//             ["i", "o", "d", "t"],
//             ["e", "c", "l", "r"],
//             ["t", "a", "k", "e"]]
// 	);
	
// newtest.findRow(2);
// // newtest.findColumn();
// newtest.findLetter(1,2);

// 4. Refactored Solution


var BoggleBoard = {
    init: function(gridArray) {
        this.grid = gridArray;
    },
    findRow: function(row) {
        console.log(this.grid[row]);
    },
 	findColumn: function(column) {
 		columnarray = []
		for (var i = 0; i < this.grid.length; i ++) {
	    columnarray.push(this.grid[i][column]);
		}
		console.log(columnarray)
	},
	findLetter: function(row2,col2) {
        console.log(this.grid[row2][col2]);
    },
    // findWord: function(wordrow,wordcol) {
    //     console.log(findLetter(wordrow,wordcol));
    // }

}
var newtest = Object.create(BoggleBoard)

newtest.init(
	        	[["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
	);
	



// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

newtest.findRow(2) == [ 'e', 'c', 'l', 'r' ];
newtest.findColumn(3) == [ 'e', 't', 'r', 'e' ];
newtest.findLetter(1,2) == "d";


// 5. Reflection 

// This was an awesome project for me. My partner and I both felt we were very
// poor in javascript but we came together to do a great job on this project.
// We picked as slightly trickier ruby project (a class definition vs just a reg
// 	math function or something) and we finished converting it quickly.
// I am now way more comfortable with javascript syntax.
