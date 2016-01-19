// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

//Relase 1.2.4
var first_num = 1;
var second_num = 13;


console.log(first_num + second_num)


//Release 1.2.6

var answer = prompt("What's your favorite color?");
console.log(answer + "!  Hey! That's my favorite too!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// I Decided to do the Fizz Buzz challenge
var range = 1
while (range != 101) {
  range % 15 == 0 ? console.log("FizzBuzz") : range % 3 == 0 ? console.log("Fizz") : range % 5 == 0 ?  console.log("Buzz") : console.log(range)
  range = range +1
}


//And the Triangle
var pound_it = ""
while (pound_it.length < 8){
 pound_it +="#"
 console.log(pound_it);
}

// Functions

// Complete the `minimum` exercise.

function min(frist_num, second_num){
  return Math.min(frist_num, second_num);
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.