// release 0
// 1. create a function that takes in an array of strings
// 2. look at the string in each index and determine its length
// 3. return the word with the longest length (string.length)

function longest(array_of_strings){
  var longest_word = array_of_strings[0]
  for (var i = 1; i < array_of_strings.length; i++){
    if(array_of_strings[i].length > longest_word.length){
      longest_word = array_of_strings[i];
    }
  }
  return longest_word;
}

console.log(longest(["long phrase", "longest phrase", "longer phrase"]));

console.log(longest(["a", "aa", "aaa"]));

console.log(longest(["this should be the longest word in the string", "this is not", "neither is this"]));