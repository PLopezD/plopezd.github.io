// I worked on this challenge [by myself, with:]
 
// For each mission, write the title as a comment. (Shown here). Also include pseudocode as a comment. 
// Note: to make commenting easier, you can highlight the section you want to comment and hold 
// command + / This will comment the line. 
 
 // Rescue Mission
 
// move down x2 
// move right
// move up x2
// move rightx2
// move down
// attack
 
 this.moveDown();
this.moveDown();
this.moveRight();

this.moveUp();
this.moveUp();
this.moveRight();
this.moveRight();
this.moveDown();
this.attackNearbyEnemy()

//Grab the mushroom
// move up
// move right 
// move left
// move up 
// attack
 

this.moveUp();
this.moveRight();
this.moveLeft();
this.moveUp();
this.attackNearbyEnemy();


//Drink Me

// attack
// move down 
// move upmove right 
// attack

this.attackNearbyEnemy();
this.moveRight();
this.moveDown();
this.moveUp();
this.moveRight();
this.attackNearbyEnemy();

//Taunt the guards

// move right
// say hi
// move left 2x
// attack
// move right, make follow
// right 2x
// up 2x
// right 2x
// have both attack

this.moveRight();
this.bustDownDoor();
this.moveRight();
this.say("Hey there!");
this.moveLeft();
this.moveLeft();
this.say("Attack!");
this.moveRight();
this.say("Follow me.");
this.moveRight();
this.moveRight();
this.moveUp();
this.moveRight();
this.say("OK");
this.moveDown();
this.moveRight();
this.moveUp();
this.moveRight();

// It's a trap

// move down 2x
// say "hey!"
//move up 2x
 //attack

// Taunt the Ogre and run for cover!
this.moveDown();
this.moveDown();
this.say("hey!");
this.moveUp();
this.moveUp();
this.say("Attack");
 
 // Taunt

 // say Hey boiiiii 4x

this.say("Hey boiiiii");
this.say("Hey boiiii");
this.say("Hey boiii");
this.say("Hey boii");

// Cowadly taunt


// run around
// say things
// run back



this.moveXY(70, 43);
this.say("weeee");
this.moveXY(63, 14);


// Commanding followers

// Tell troops to follow
// go near ogres
// attack
// run away


this.say("follow");
this.moveXY(64, 43);
this.say("attack");
this.moveXY(75, 63);

// Mobile Artillery

// move into range
// attack 
// move into range
// attack
// move into range
// attack 
// move into range
// attack
// Joy

this.moveXY(30, 26);  
this.attackXY(46, 5); 


this.moveXY(65, 32); 
this.attackXY(69, 59);
this.moveXY(65, 20); 
this.attackXY(65, 36);

this.moveXY(65, 47); 
this.attackXY(50, 69);


this.attackXY(54, 58);
this.attackXY(55, 57);

-This refers to the object being controlled. In javascript you typically would name your elements better than "this" so you can identify them easier.
- () holds variables or inputs in javascript
- to break one line from another, similar to css




// Reflection:
// Write your reflection here.

Frankly, this project was terrible. I spent more time watching the "casting" screen load  than I did writing code. The text editor is 
paintfully slow and watching  a graphic a 4 year old might enjoy made me feel like i was one.
And all the code i did write was just copy and pasting, 0 thought. This felt like a huge waste of time. 








