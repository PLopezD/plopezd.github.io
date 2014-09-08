// U3.W8-9: 


// I worked on this challenge by myself.

// 2. Pseudocode
// Create a grocery list class
// add methods to add items,
// view list
// subtract items


// 3. Initial Solution

// var GroceryList = {
// 	init: function(starting_list) {
// 		list = [startling_list]
// 	}

// 	add_item: function(item) {
// 		list.push(item)
// 		console.log(list)
// 	}
// 	view_list: function() { 
// 		console.log(list)
// 	}
// 	remove_item: function(item)
// 		if list.include(item)
// 			list.pop(item)			
// 		else 					
// 			console.log("That's not on the list!")
// 		end
// }		



// 4. Refactored Solution

var GroceryList = {
	init: function(starting_list) {
		list = (starting_list)
	},

	add_item: function(item) {
		list.push(item)
		console.log(list)
	},
	view_list: function() { 
		console.log(list)
	},
	 remove_item: function(item) {
		indx = list.indexOf(item)
	
	if (indx != -1) {
		return list.splice(indx, 1);
		 console.log(list)} 
		 else
		{return console.log("That's not on the list!")}
}
}		


// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
newlist = Object.create(GroceryList)

newlist.init(["apples", "oranges", "towels"])


newlist.add_item("steak")
newlist.view_list
newlist.remove_item("grapes")
newlist.remove_item("oranges")
newlist.view_list


// 5. Reflection 

// Fun project, a little repetative. Doesn't really push our knowledge but reiterates the basics of 
// arrays in javascript.