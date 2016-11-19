// RELEASE 0: FIND THE LONGEST PHRASE
// Create a program that takes a list of words/phrases
// Cycle throught the list
//	- Do this as many times as there are items on the list
// Determine the length of each individual string
// Store the lengths of each items to use for comparison
// If one item's length is greater than another's:
//	- The former item is longer
// Continue comparing each item to the one that has the longest length
// At the end, return the item with the longest length

function longestPhrase(arr) {
  var leng = 0;
  
  for(var i = 0; i < arr.length; i++ ) {
    if (arr[i].length > leng) {
        var leng = arr[i].length;
        var longest = arr[i];
    }      
  } 
  return longest
}

// console.log(longestPhrase(["elephant", "giraffe", "brontosaurs", "boa constrictor", "A Yeti so huge that you would probably die from the mere size of it."]));
// console.log(longestPhrase(["Facebook", "Twitter", "Snapchat", "Pinterest"]));
// console.log(longestPhrase(["Captain Crunch", "Lucky Charms", "Trix", "Cheerios"]));


// RELEASE 1: FIND A KEY-VALUE MATCH
// Create a program starts with two sets of data
// Cycle through the list
//	- Do this as many times as there are items in each set
//	- During each cycle:
//		- The first pair should be compared to all the other pairs in the other data set
//		- If the two sets of data have a data pair that matches:
//			- Then return true
//		- Otherwise:
//			- Return false (meaning none of the pairs match)
// Repeat the comparison process as needed to compare all the possible 

function compareObjects(oneObject, twoObject) {
  var oneValueArray = Object.keys(oneObject);
  var twoValueArray = Object.keys(twoObject);
  
  for (var i = 0; i < oneValueArray.length; i++) {
    var prop = oneValueArray[i];
    
    	if (oneObject[prop] == twoObject[prop]) {
    	  return true;
    	} 
 }
  	return false;
}
	

var jimData = {name: "Jim Halpert", dmBranch: "Scranton", occupation: "paper salesman"};
var kevinData = {name: "Kevin Malone", dmBranch: "Scranton", occupation: "accountant"};
var andyData = {name: "Andy Bernard", dmbranch: "Stamford", occupation: "paper salesman"}


// console.log(compareObjects(jimData, kevinData));
// console.log(compareObjects(kevinData, andyData));
// console.log(compareObjects(jimData, andyData));


// RELEASE 2: GENERATE RANDOM TEST DATA
// Create a program that accepts a number to represent a generated list with that many items
// Provide a list of letters that can be accessed to generate words
// Cycle through the alphabet so that it chooses a random letter
// - The cycle will loop the same number of times that
// Create a new variable that can have letters added to it with each cycle
//	- The words must be between 1 and 10 letters long

function wordGenerator(arrayLength) {
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    var wordArray = [];

    for (var i = 0; i < arrayLength; i++) {
    	var randomNum = Math.round((Math.random() * 10) + 1);
    	var nonsenseWord = "";
    	for (var n = 0; n < randomNum; n++) {
    		nonsenseWord += alphabet[i + Math.round((Math.random() * 10) + 1 )];
   		}
    wordArray.push(nonsenseWord);
	}
  return wordArray;
}


// console.log(wordGenerator(3));
// console.log(wordGenerator(8));

for (var i = 0; i < 10; i++) {
	var finalArray = wordGenerator(6);
	console.log(finalArray)
	console.log(longestPhrase(finalArray));
}
