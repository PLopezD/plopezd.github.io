  // I worked on this challenge by myself.


//     There is a section below where you will write your code.
// Do not alter this object here.

// 

var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}



// __________________________________________
// Write your code below.

//defines the object 'adam'
var adam = {};

// adds name property to adam
adam.name = "Adam";

//adds spouse property to terah
terah.spouse = adam;

//edit terah's weight property
terah.weight = 125;

//removes terah's eye color property
delete terah.eyeColor;

//add spouse property to adam
adam.spouse = terah;

// defines and adds children property to terah  object
terah.children = {};

// creates carson, colton and carter objects
var carson = {};
var colton = {};
var carter = {};

//make carson.name property equal to string 'Carson'
carson.name = "Carson";

//add carson to terah's children property (how can I add all the kids at once)
// some type of - children(carson,carter,colton) = {carson,carter,colton}
terah.children.carson = carson;

//make carter.name property equal to string 'Carter'
carter.name = "Carter";

//add carter to terah children property
terah.children.carter = carter;

//make colton.name property equal to string 'Colton'
colton.name = "Colton";

//add colton to terah children property
terah.children.colton = colton;

//add children property to adam equal to terah.children
adam.children = terah.children;
// Reflection: Use the reflection guidelines
  // This project was pretty interesting, learned a lot about syntax and overwriting variables.
  // I was a bit irritated that I could not find a way to add all the children variables at once (atleast not in a timely manner).
  // If anyone knows and could share in my issues that would be appreciated. I'm afraid I may have confused object and property in some 
  // of my pseudocode. 

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
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)


assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the variable adam.",
  "3. "
)


assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)


assert(
  terah.eyeColor === undefined,
  "The terah eyeColor property should be removed.",
  "5. "
)


assert(
  terah.spouse.spouse === terah,
  "The terah spouse property's value spouse property should be terah.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be an Object.",
  "7. "
)

assert(
  terah.children.carson.name === "Carson",
  "The terah children property should have a carson property with its own property name with a value of 'Carson'.",
  "8. "
)



assert(
  terah.children.carson.name === "Carson",
  "The terah children property should have a carson property with its own property name with a value of 'Carson'.",
  "8. "
)

assert(
  terah.children.carter.name === "Carter",
  "The terah children property should have a carter property with its own property name with a value of 'Carter'.",
  "9. "
)

assert(
  terah.children.colton.name === "Colton",
  "The terah children property should have a colton property with its own property name with a value of 'Colton'.",
  "10. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be the value of the terah children property",
  "11. "
)

console.log("\nHere is your final terah object:")
console.log(terah)
