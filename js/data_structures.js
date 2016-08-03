// Release 0

var colors = ["cyan", "magenta", "yellow", "black"];
var horseNames = ["Cereal", "Sea Biscuit", "Pickles", "Banana"];

colors.push("aquamarine");
horseNames.push("Coffee");

// for (var key in horseNamesColors) {
//     let value = horseNamesColors[key];
//     console.log(value);
// }

// Release 1

var horseNamesColors = {};
for (var i = 0; i < colors.length; i++) {
  horseNamesColors[horseNames[i]] = colors[i];
}

console.log(horseNamesColors);

// Release 2

function Car(color, brand, horsepower) {

  this.color = color;
  this.brand = brand;
  this.horsepower = horsepower;

  //   this.bark = function() { console.log("Woof!"); };
  this.honk = function() {
    console.log("BEEP!");
  };

  this.stall = function() {
   console.log("Clunkity clunk!");
  };

  console.log("New car created...");
}

var new_car = new Car("blue", "Toyota", 120);
console.log("Our new car is a " + new_car.color + " " + new_car.brand + ".");
new_car.honk();

var junk_car = new Car("brown", "Crown Victoria", 20);
console.log("Our junk car has a horsepower of " + junk_car.horsepower + ", what a piece of crap!");
junk_car.stall();