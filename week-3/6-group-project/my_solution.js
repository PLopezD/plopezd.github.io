// My role in the group is: Person 1 (this is release 4).
// I will test the code in using repl.it (http://repl.it/languages/JavaScript), and comment which instances test true (pass)/false (fail). I will follow this with a summary.

// Here is my part of the challenge:

var arrayOdd = [ 1, 2, 3, 4, 5, 5, 7 ];

var arrayEven = [ 4, 4, 5, 5, 6, 6, 6, 7 ];

// Part 2 of 3

var assert = function( test, message, testNumber ) {
	if ( test ) {
		return testNumber + " true";
	} else {
		return testNumber + " false\nERROR: " + message;
	}
}

// Part 3 of 3

var sum = function( someArray ) {
	var total = 0;
	for ( x in someArray ) {
		total = total + someArray[x];
	}
	return total;
}


var mean = function( someArray ) {
	return sum( someArray ) / someArray.length;
}

var median = function( someArray ) {
	var element = Math.floor( someArray.length / 2 );
	if ( someArray.length % 2 === 0 ) {
		return ( someArray[element] + someArray[element - 1] ) / 2;
	} else {
		return someArray[element];
	}
}

// Instance 1 - Pass

assert( (typeof sum === "function"), "sum should be a function", 1 );

// Instance 2 - Pass

assert( sum(arrayOdd) === 27, "sum should return the sum of all elements in an array with an odd length", 2 );

// Instance 3 - Pass

assert( sum(arrayEven) === 43, "sum should return the sum of all elements in an array with an even length", 3 );

// Instance 4 - Pass

assert( (typeof mean === "function"), "mean should be a function.", 4 );

// Instance 5 - Pass

assert( mean(arrayOdd) === 3.857142857142857, "mean should return the average of all elements in an array with an odd length.", 5 );

// Instance 6 - Pass

assert( mean(arrayEven) === 5.375, "mean should return the average of all elements in an array with an even length.", 6 );

// Instance 7 - Pass

assert( typeof median === "function", "median should be a function.", 7 );

// Instance 8 - Pass

assert( median(arrayOdd) === 4, "median should return the median value of all elements in an array with an odd length.", 8 );

// Instance 9 - Pass

assert( median(arrayEven) === 5.5, "median should return the median value of all elements in an array with an even length.", 9 );


//Summary:
// Above is the final code that Rob was able to piece together for us. I used repl.it to test and everything tested true (pass). Way to go accountabilibuddies
