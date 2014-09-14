/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge [by myself, with:]

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]


// __________________________________________
// Write your code below.

function average(scores){
  sum = scores.reduce(function(a, b) { return a + b });
  avg = sum / scores.length;
  return avg
}

// var gradebook = {

//    Joseph: {testScores: scores[0]},
//    Susan: {testScores: scores[1]},
//    William: {testScores: scores[2],
//    Elizabeth: {testScores: scores[3]}  
// },
//  addScore: function(student, score) {
//      if (student = "Susan") {
//        this.Susan.testScores.push(score)
//      } else if (student = "Joseph") {
//        this.Joseph.testScores.push(score)
//  }else if (student = "Elizabeth") {
//        this.Elizabeth.testScores.push(score)
//  }else if (student = "William") {
//        this.William.testScores.push(score)
//  }else { console.log("That's not one of my students!")}

//  // ^^^ this doesn't work
// // this.Susan.testScores.push(score) < -- This works

// },
//  getAverage: function(name){
//    average(this.name.testScores)
//  }
// }

// __________________________________________
// Refactored Solution

function average(inputArray) {
  sum = 0;
  for (i=inputArray.length; i--;) { sum += inputArray[i]; }
  return sum / inputArray.length;
}

gradebook = {}
for (i=0; i<students.length; i++) {
  gradebook[students[i]] = {}
  gradebook[students[i]].testScores = scores[i];
}
gradebook.addScore = function(name, score) { this[name].testScores.push(score) };
gradebook.getAverage = function(name) { return average(this[name].testScores) };

// __________________________________________
// Reflect

// This was harder than I expected.. not how I wanted to end Phase 0. I couldn't get my loops to work at first,
// then I couldn't get a variable entered to return a property of the variable. All my errors were syntatical ''
// making this even more frustrating.
// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)
