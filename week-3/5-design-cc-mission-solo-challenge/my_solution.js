// This is a solo challenge

// Your mission description:
// Character: 
// 		name: King 
// 		Class: Jedi
// 		Weapon: Lightsaber
// 		Leap Strength: 10
// Enemy: 
// 		name: Dagorey
// 		Class: Sith
// 		weapon: Machete 
// 		leap strength: 25
//  	lightning: 25
//  Objective1: gather weapons
//  Objective2: train powers
//  Objective3: kill enemy

// Pseudocode

// Create character
//  Give character  aforementioned characteristics
// Create enemy
// Give enemy aforementioned characteristics
// Have main character go to forest and gather weapons
//  - find grenade, bow and arrow
// - Have character travel to evil lair and kill enemy Dagorey
// 

// Initial Codeol

// Define objects
var character = {
  name: "King",
  class: Jedi,
  weapon: lightsaber,
  strength: 10,
}

var enemy = {
  name: "Dagorey",
  class: Sith,
  weapon: Machete,
  strength: 25,
  lightning: 25
}

var forest = {
	color: "green"
	state: "damp"
}

var lair = {
	color: "black"
	state: "negative"
}

var moveto = function(location) {
	moveto(location)
}

// move to forest, collect items
this.moveto(forest)

var inventory = {}

var collect = function(item) {
	inventory = inventory + item
	strength = strength + 10
}

this.collect("grenade")
this.collect("bow")
this.collect("arrow")

var throw = function(weapon, target) {
	
	strength
}

// move to lair, kill enemy
this.moveto(lair)

this.throw(grenade, enemy)


// Refactored Code
// Define objects
var character = {
  name: "King",
  class: Jedi,
  weapon: lightsaber,
  leap strength: 10,
}

var enemy = {
  name: "Dagorey",
  class: Sith,
  weapon: Machete,
  leap strength: 25,
  lightning: 25
}

var forest = {
	color: "green"
	state: "damp"
}

var lair = {
	color: "black"
	state: "negative"
}

// move function, will need to be reviewed
var moveto = function(location) {
	window.moveTo(location)
}

// move to forest, collect items
this.moveto(forest)

var inventory = {}

var collect = function(item) {
	inventory = inventory + item
}

this.collect("grenade")
this.collect("bow")
this.collect("arrow")

var throw = function(weapon, target) {
	strike enemy with grenade
}

// move to lair, kill enemy
this.moveto(lair)



this.throw(grenade, enemy)


// Reflection
// I am not entirely sure I did this project properly. I also wanted to add an if function where if the strength of the main character is 
// less than the enemy then the enemy wins. I will work to add that tonight. The "strike" function is something I need to create as well.
// I feel this was very beneficial for learning javascript syntax and creative thinking. I enjoy open ended projects like this but the
//  minimal instruction makes me a little worried that I am not accomplishing as much as I should. I need to give myself a bit more
// time to do these open ended projects as well so I finish with something I am more proud of.
// 
// 
// 