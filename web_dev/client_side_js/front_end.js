// Release 1
// var all_divs = document.getElementsByTagName("div");
// var hat = all_divs[2];
// hat.style.border = "3px solid red";


// Release 2
function addRedBorder(event) {
	console.log("The hat is red!");
	console.log(event);
	event.target.style.border = "3px solid red";
}

var all_divs = document.getElementsByTagName("div");
var hat = all_divs[2];
hat.addEventListener("click", addRedBorder);