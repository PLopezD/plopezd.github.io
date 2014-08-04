// I am #2, I will translate the user stories into pseudocode. - Pablo Lopez Domowicz

// Here is my part of the challenge:

// #PSEUDOCODE
		// Part 1 of 3

// Create 2 arrays with 2 different sets of numbers.

// Call array#1 = "arrayOdd" since it has an odd number of objects
// Have it include the following
// 1, 2, 3, 4, 5, 5, 7

// Call array#2 = "arrayEven" since it has an even number of objects
// Arrayeven will include the following:
// 4, 4, 5, 5, 6, 6, 6, 7

		// Part 2 of 3

// We will now write one IF-THEN function that will return a boolean and requires 3 variables.
// Variable 1 : test - this a block of code that will run and evaluate as true or false (e.g. sum/mean/median=x/y/z)
// Variable 2 : the message - this is a message that will be shown to the user. 
// variable 3 : a test number (1 through 9)
// Name of function should be "assert" and it should accept the 3 variables mentioned above (test, message, testnumber) and looks as follows:

// IF "test"(aka variable1) THEN
// return "testnumber(aka variable3) true" 
// ELSE
// return "testnumber(aka variable 3) false"
// return "ERROR: message(aka variable2)"
// ENDIF

		// Part 3 of 3

		// We will now run the function created above 9 times.

// The first  instance of the function is checking if the test to see if the sum function is being called rather than taking every element of the array and adding them together individually.
// Run assert function with variables set as follows:
// Set variable 1 to: sum is a type of process === function,
// Set variable 2 to "sum should be a Function", 
// Set variable 3 to "1" 
// 		AKA input is ==>>>> assert(sum is a function, "sum should be a function", 1) :  				



// IF function is a sum function THEN               // You would never be able to see these lines 
// return "1 true" 									// You would never be able to see these lines 
// ELSE                                             // You would never be able to see these lines 
// return "1 false"                                 // You would never be able to see these lines 
// return "ERROR: sum should be a Function"         // You would never be able to see these lines 
// ENDIF                                            // You would never be able to see these lines  


// The second  instance of the function is checking if the sum of the arrayOdd equals 27
// Set variable 1 to "sum(arrayOdd) = 27",
// Set variable 2 to "sum should return the sum of all elemnents in an array with an odd length", 
// Set variable 3 to "2" 
// AKA input is ==>>>>  assert(sum(arrayodd)=27, "sum should return the sum of all elemnents in an array with an odd length", 2)



// IF sum of arrayodd = 27 THEN           														    // You would never be able to see these lines 
// return "2 true" 																					// You would never be able to see these lines 
// ELSE                                    	    													  // You would never be able to see these lines 
// return "2 false"                           													      // You would never be able to see these lines 
// return "ERROR: sum should return the sum of all elemnents in an array with an odd length"          // You would never be able to see these lines 
// ENDIF                                          													  // You would never be able to see these lines  



// The third instance of the function is checking if the sum of the arrayEven equals 43
// Set variable 1 to "sum(arrayEven) = 43",
// Set variable 2 to "sum should return the sum of all elemnents in an array with an even length", 
// Set variable 3 to "3" 

// The fourth  instance of the function is like the first, it is a test checking that the mean function is being summoned.
// Set variable 1 to: mean is a type of process === function
// Set variable 2 to "mean should be a Function.", 
// Set variable 3 to "3" 

// The fifth instance of the function is checking if the mean of the arrayOdd equals 3.857142857142857
// Set variable 1 to "mean(arrayOdd) === 3.857142857142857",
// Set variable 2 to "mean should return the average of all elements in an array with an odd length.", 
// Set variable 3 to "5" 

// The sixth instance of the function is checking if the mean of the arrayEven equals 5.375
// Set variable 1 to "mean(arrayEven) === 5.375",
// Set variable 2 to "mean should return the average of all elements in an array with an even length.", 
// Set variable 3 to "6" 

// The seventh instance of the function is the same as 1 and 4, it is a test checking that the median function is being summoned
// Set variable 1 to: median is a type of process === function,
// Set variable 2 to "median should be a Function.", 
// Set variable 3 to "7" 

// The eighth instance of the function is checking if the median of the arrayOdd equals 4
// Set variable 1 to "median(arrayOdd) === 4",
// Set variable 2 to "median should return the median value of all elements in an array with an odd length.", 
// Set variable 3 to "8" 


// The ninth instance of the function is checking if the median of the arrayEven equals 5.5
// Set variable 1 to "median(arrayEven) === 5.5",
// Set variable 2 to "median should return the median value of all elements in an array with an even length.", 
// Set variable 3 to "9" 


// result of all tests 1-9 should equal true



