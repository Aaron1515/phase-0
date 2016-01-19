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

var me = {
  name: "Aaron",
  age: 100,
  favorite_foods: ["seafood", "spicy foods", "healthy foods"],
  quirk: "I only make right turns on Tuesday."
};





// Release 1: Read and Respond

// Introduction (Links to an external site.)

// Did you learn anything new about JavaScript or programming in general?.
// JavaScript is very similar to Ruby but has a total change in syntax however the concept is the same

// Are there any concepts you feel uncomfortable with?
// I am still not comfortable using Javascript because the syntax scares me a bit.  It was hard enough on the ruby side now its the JavaScript.  At least the concepts are very similar where it puts me a little bit at ease.

// Ch. 1: Values, Types, and Operators (Links to an external site.)

// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
// Numbers - Numbers are the say as Ruby. 1 is a 1 and 2 is a 2.  In javascript has a Infinity and -Infinity that represent infinite numbers and infinite negative numbers.
// Arithmetic - In both case they use math the say way. Such as 5 + 5 is 10.  Same with subtraction 5 - 5 is 0.  The way they are different is that “5” - 1 is 4 where you can subtract a string from a 1 and “5” + 1 is 51 in javascript.  I’m still not 100% on the understanding of how adding and subtracting strings yet.
// Booleans - Both works the same way hey have booleans that works the same way where 2 == 2 [true]. They use the same operators such as “==“ and “!=“.    In javascript has “NaN” which stands for Not a Number and null instead of nil.  And null is also the same as undefined.
// Various Operators - things like “? and :” , “==“, and < > works the same way as Ruby.  I haven’t found operators that seems to be different from Ruby.

// Ch. 2: Program Structure (Links to an external site.)

// What is an expression?
// A fragment of the code that produce a value is called an “expression”.
// What is the purpose of semicolons in JavaScript? Are they always required?
// Semicolons are need for it to run the next line, they are not always required but at this at this time its good to always use it for now until we learn when to not sure it.
// What causes a variable to return undefined?
// When a variable isn’t defined it will result in undefined.
// Write your own variable and do something to it in the eloquent.js file.
//     var  first_num = 1;
//     var  second_num = 13;
//     console.log(first_num + second_num)
// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
// console.log is simular to Ruby’s puts or p in front of a expression.  It is used to print out an expression to the screen where the user or coder see what is happening.
// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
//     var answer = prompt("What's your favorite color?");
//     console.log(answer + "!  Hey! That's my favorite too!")
// Describe while and for loops
// While loops are similar to Ruby’s While loops.  While a number is greater than or less than do [this] or [that].
// For loops are designed to be a more refactored way to express while loops.
// What other similarities or differences between Ruby and JavaScript did you notice in this section?
// The concept of boolean, variables, and function/methods are the same.  The syntax are written a little different.  Having to remember the base concept is the same as ruby and the syntax are different makes it easier to write javascript.  Thinking that Ruby is English and JavaScript is Spanish.  To express yourself you need to form a sentence which is the same as all languages.  But the actual calling of the words are different.
// Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
// // I Decided to do the Fizz Buzz challenge
// var range = 1
// while (range != 101) {
//     range % 15 == 0 ? console.log("FizzBuzz") : range % 3 == 0 ? console.log("Fizz") : range % 5 == 0 ?  console.log("Buzz") : console.log(range)
//     range = range +1
// }


// Ch. 3: Functions (Links to an external site.) (Skip the sections on closure and recursion)
// What are the differences between local and global variables in JavaScript?
// Variables that is declared within a function(Method in Ruby) becomes a local variable and they can only be used within the function.
// Variables that are declared outside of the function becomes a global variable which could be be access on the whole web page.
// When should you use functions?
// Functions are used to cut down on repetitive work on things like if I wanted to display “How are you today?” 100 times or run a pre-defined function multiply times.  I’m not sure why I want to say “How are you today?” for 100 times but if I did I could.  These are just couple example I would make a function for.  More or lest it helps cut down on repetitive work.
// What is a function declaration?
// Function declaration is similar to creating a method in Ruby.  Here’s an example of creating a function.
// var talk = function() {
// console.log(“Hi!”);
// };

// talk() //This is how you call the function

// Hi! //This is what it returns.

// // Another way to write a function is

// function talk() {
// console.log(“Hi!”);
// }
// Complete the minimum exercise in the eloquent.js file.
//     function min(frist_num, second_num){
//       return Math.min(frist_num, second_num);
//     }

//     //Driver code
//     console.log(min(0, -10))
//     console.log(min(0, 10))

//     //Results
//     -10
//     10

// Ch. 4: Data Structures: Objects and Arrays (Links to an external site.)
// Skip the sections on the Lycanthrope's log, Computing Correlations, and sections from Further Arrayology to the Global Object, but read the chapter summary.
// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array[“max"]
// In the example on the question they both will try to get the value of max.  The different is using dot must be a valid variable name and directly names the property.  When using the brackets it evaluates things inside and bracket and gets the property name.
// Whereas value.max fetches the property of value named “max”, value[max] tries to evaluate the expression max and uses the result as the property name.
// Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
// var me = {
//   name: "Aaron",
//   age: 100,
//   favorite_foods: ["seafood", "spicy foods", "healthy foods"],
//   quirk: "I only make right turns on Tuesday."
// };
// What is a JavaScript object with a name and value property similar to in Ruby?
// JavaScript has a key value pair similar to Ruby its called a Hash.  It acts the say way as well.





// Release 2: Reflect

// What are the biggest similarities and differences between JavaScript and Ruby?
// The concept is the same on both languages.  They both have booleans, integers, strings, and defining variables.

// Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?
// The while concept in JavaScript made so much more sense for some reason.  JavaScript could be a much easier language if we started JavaScript first.

// How do you feel about diving into JavaScript after reading these chapters?
// It does put me more at ease because JavaScript is so similar to Ruby.  JavaScript just made more sense than Ruby now.  JavaScript refer everything to “var”.  Ruby has too much names for things like Class, Methods, Variable, Hashes and so on.  JavaScript is just var.
// I was a bit intimidated by JavaScript in the very beginning. Now I’m just a little less intimidated than before.