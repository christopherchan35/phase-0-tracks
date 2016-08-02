// pseudocode for reverse method
// 1. create a function that takes in a string
// 2. split the string into an array
// 3. with a for loop, add the indicies of the array, starting from the end 1 by 1 into a new/blank string
// 4. return the new string

function reverse(word){
  //word_split = word.split;
  var new_string = "";
  for(var i = word.length - 1; i >= 0; i--){
    new_string += word[i];
  }
  //console.log(new_string);
  return new_string;
}

reverse_string = reverse("hello");
if (1 == 1){
  console.log(reverse_string);
}
