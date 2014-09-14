
var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]


function average(scores){
	sum = scores.reduce(function(a, b) { return a + b });
	avg = sum / scores.length;
	return avg
}

var gradebook = {

		Joseph: {testScores: scores[0]},
		Susan: {testScores: scores[1]},
		William: {testScores: scores[2],
		Elizabeth: {testScores: scores[3]}	
},
	addScore: function(student, score) {

this[student].testScores.push(score) 

},
	getAverage: function(name){
		average(this.name.testScores)
	}
}



// console.log(typeof gradebook.Susan.testScores)


console.log(gradebook.Susan.testScores)

gradebook.addScore("Susan", 20)
gradebook.addScore("William", 10)
gradebook.addScore("Joseph", 30)
gradebook.addScore("Mark", 50)
console.log(gradebook.Susan.testScores)
console.log(gradebook.William.testScores)
console.log(gradebook.Joseph.testScores)