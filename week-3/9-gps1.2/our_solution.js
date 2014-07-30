var actor1 = {
    name: "Adam Sandler",
    age: 47,
    quote: "That's your home! Are you too good for your home?!"
    gender: male
}

var actor2 = {
    name: "Kristen Bell",
    age: 33,
    quote: "Do you wanna build a snowman?"
    gender: female
}

var actor3 = {
    name: "Jim Carrey",
    age: 53,
    quote: "...So you're telling me there's a chance? YEAH!"
    gender: male
}


function Client(name, age, quote, gender){
        this.name = name;
        this.age = age;
        this.quote = quote;
        this.gender = gender;
}
    
var shooterMcGavin = new Client("Shooter McGavin", 48, "Just stay out of my way... or you'll pay. Listen to what I say.");

console.log(shooterMcGavin.constructor)
console.log(shooterMcGavin.age)
console.log(shooterMcGavin.quote)
    
Actorlist = [actor3, actor2, actor1, shooterMcGavin]  

console.log(Actorlist)

function showQuote(quote){
    this.quote = quote;
    console.log(quote)
}

showQuote(console.log(actor3.quote))


