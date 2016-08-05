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

// release 1
// 1. create a function that takes in 2 objects
// 2. compare the objects (which will be hashes) to see if they both have the same key-value pair
// 3. if there is a match then return true. otherwise return false

function find_match(hash1, hash2){
  var array1 = Object.keys(hash1);
  var array2 = Object.keys(hash2);

  for(var i = 0; i < array1.length; i++){
    for(var j = 0; j < array2.length; j++){
      if(array1[i] == array2[j]){
        if(hash1[array1[i]] == hash2[array2[j]]){
          return true;
        }
      }
    }
  }
  return false;
}

var males = {name: "Bob", age: 35};
var females = {name: "Bertha", age: 35};

console.log(find_match(males, females));

var boys = {name: "Billy", age: 5};
var girls = {name: "Betty", age: 6};

console.log(find_match(boys, girls));

// release 2

