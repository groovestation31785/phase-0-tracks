// FIND THE LONGEST PHRASE
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

console.log(longestPhrase(["elephant", "giraffe", "brontosaurs", "boa constrictor", "A Yeti so huge that you would probably die from the mere size of it."]));

// FIND A KEY-VALUE MATCH
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