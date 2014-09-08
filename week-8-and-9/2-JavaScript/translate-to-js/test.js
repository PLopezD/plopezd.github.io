// var tester = [["b", "r", "a", "e"],
//              ["i", "o", "d", "t"],
//              ["e", "c", "l", "r"],
//              ["t", "a", "k", "e"]];

//              console.log(tester[3][1]	) 
//              console.log(tester[2][2]	) 
//              console.log(tester[1][0]	) 
//              console.log(tester[2][3]	) 

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
	
newtest.findRow(2) == [ 'e', 'c', 'l', 'r' ]
newtest.findColumn(3) == [ 'e', 't', 'r', 'e' ];
newtest.findLetter(1,2) == "d";


