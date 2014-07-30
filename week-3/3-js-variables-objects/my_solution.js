// I paired with Rob Yang on this challenge.

// __________________________________________
// Write your code below.

var secretNumber = 7;
var password = "just open the door"
var allowedIn = false;
var members = ["John", "Rob", "Pablo", "Mary"];

// __________________________________________
// Reflection: Use the reflection guidelines to write a reflection here. 
// // I learned the syntax for an array, that will be useful going forward.
// We ran into almost 0 problems with this project. 
// I am very confident with the learning competencies
// I enjoyed working with my partner, learning a bit about every person I have paired with as part of the pre-work questions 
// has been a very entertaining portion of this course. 
// There were minimal problems in this challenge, it only took 26 minutes :P

// __________________________________________
// Test Code:  Do not alter code below this line.

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (typeof secretNumber === 'number'),
  "The value of secretNumber should be a number.",
  "1. "
)

assert(
  secretNumber === 7,
  "The value of secretNumber should be 7.",
  "2. "
)

assert(
  typeof password === 'string',
  "The value of password should be a string.",
  "3. "
)

assert(
  password === "just open the door",
  "The value of password should be 'just open the door'.",
  "4. "
)

assert(
  typeof allowedIn === 'boolean',
  "The value of allowedIn should be a boolean.",
  "5. "
)

assert(
  allowedIn === false,
  "The value of allowedIn should be false.",
  "6. "
)

assert(
  members instanceof Array,
  "The value of members should be an array",
  "7. "
)

assert(
  members[0] === "John",
  "The first element in the value of members should be 'John'.",
  "8. "
)

assert(
  members[3] === "Mary",
  "The fourth element in the value of members should be 'Mary'.",
  "9. "
)