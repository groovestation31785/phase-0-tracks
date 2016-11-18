// RELEASE 0
var horseColors = ["blue", "red", "green", "orange"];
var horseNames = ["Seabiscuit", "BoJack", "Secretariat", "Beauty"];

horseColors.push("yellow");
horseNames.push("Ed");

// console.log(horseNames);
// console.log(horseColors);

// RELEASES 1
var horseInfo = {};

for (var i = 0; i < horseNames.length; i++) {
	horseInfo[horseNames[i]] = horseColors[i];	
}
console.log(horseInfo);

// RELEASE 2

function Car(make, model, color) {
	console.log("Our new car:", this);

	this.make = make;
	this.model = model;
	this.color = color;

	this.vroom = function() { console.log("Vroom, Vroom!"); };

	console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Lets build a car...");

var anotherCar = new Car("Volkswagon", "Jetta", "Silver");
console.log(anotherCar);
console.log("Our car goes vroom:");
anotherCar.vroom();
console.log("----");

console.log("Let's build another car ...");
var yetAnotherCar = new Car("Honda", "Fit", "Red");
console.log(yetAnotherCar);
console.log("This car can go vroom, too:");
yetAnotherCar.vroom();
console.log("-----")
