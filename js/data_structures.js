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

