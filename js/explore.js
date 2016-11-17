// PSEUDOCODE FOR JAVASCRIPT PROGRAM
// Create a program that receives a word or sentence
// Take said word or sentence and determine its length
// Cycle through the word/sentence starting with the last character
// With each cycle, the letters are put in an empty string
// in order to create a new word/statement (but in reverse)


function reverse(str) {
	var newStr = "";
	typeof newStr
	for (var i = str.length - 1; i >= 0; i--) 
		newStr += str[i];
		return newStr;
}

reverse("hello");

// Note to self: subtracting 1 from str.length will take away 
// that pesky 'undefined'.

var codingIsAwesome = true

if (codingIsAwesome) {
	console.log(reverse("If palindrome were a palindrome, we would be at level awesome!!"))
}