// =======================
// 9.2.1 JavaScript Grocery List
// =======================

// Puesdo Code
// Create a function to create a new list that you can give an STRING of contents.
// Seprate the input where the spaces are and create and LIST of items from that.

// Create a FUNCTION that you can add to the list

// Create a FUNCTION that you can remove an ITEM from the list

// Create a FUNCTION that allows your to UPDATE the quanity form the list

// Create  FUNCTION to list or CALL the list.


//Initial Solution


// function newList(stuff){
//   var list = {};
//   var items = stuff.split(" ");
//   for (var x = 0; x < items.length; x++){
//     list[items[x]] = 1;
//   }
//   return list
// }

// function addQuanity(list_name, item, qty){
//   if (list_name[item] === undefined){
//     list_name[item] = qty
//   }
//   else {
//   list_name[item] += qty
//   }
// }


// function removeItem(list_name, item) {
//   delete list_name[item]
// }

// function updateQuanity(list_name, item, qty){
//   list_name[item] = qty
// }


// function printList(list_name) {
//   for(var item in list_name) {
//     console.log('You have ' + list_name[item] + " " + [item] + ' in your list.' )
//   }
// }


// REFACTORING

function newList(stuff){
  var list = {};
  var items = stuff.split(" ");
  for (var x = 0; x < items.length; x++){
    list[items[x]] = 1;
  }
  return list
}

function addQuanity(list_name, item, qty){
  if (list_name[item] === undefined){
    list_name[item] = qty
  }
  else {
  list_name[item] += qty
  }
}

function removeItem(list_name, item) {
  delete list_name[item]
}

function updateQuanity(list_name, item, qty){
  list_name[item] = qty
}

function printList(list_name) {
  for(var item in list_name) {
    console.log('You have ' + list_name[item] + " " + [item] + ' in your list.' )
  }
}




//Driver code
// var something = new newList("apple bread coffee chocolate");
// // console.log(something)
// changeQuanity(something, "herbs", 1)
// // console.log(something)
// removeItem(something, "apple");
// // console.log(something)
// changeQuanity(something, "bread", 30)
// console.log(something)
// printList(something)

// REFLECTION
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

// I'm able to get use to the FOR loop a lot better and can tell the difference between [variable] vs something[variable].  I tired both ways and was gettting different results till it came clear to me what it was doing.

// What was the most difficult part of this challenge?

// It wasn't hard because I have puesdo coded it once before.  So it was clear that it's just about syntax this time around.  How to create different loops to get to each item on the list.

// Did an array or object make more sense to use and why?

// In JavaScript I mainly use object because it was easier to loop through it.  This project was mainly using key pairs because we need to know the numbers of items on the shopping list.  We could use pair arrays but there was too much nesting to keep it orginized.








// =======================
// 9.2.2 Translate Ruby to JavaScript
// =======================

//Puesdo Code

// Create a FUNCTION that tanks an ARRRY in the PARAMETER
// Start a counter for the index of the array.
// With counter as the index, count each number.
// IF the number is divisible by 15 then print out FizzBuzz
// IF ELSE the number is divisible by 3 then print out Fizz
// IF ELSE the number is divisible by 5 then print out Buzz
// ELSE just print out the number.



//Initial Solution



function super_fizz_buzz(giveMeSomething){
  for(var x = 0;x<=giveMeSomething.length;x++) {
    if (giveMeSomething[x] % 15 == 0)
        console.log("FizzBuzz");
    else if (giveMeSomething[x] % 3 == 0)
        console.log("Fizz");
    else if (giveMeSomething[x] % 5 == 0)
        console.log("Buzz");
    else {
        console.log(giveMeSomething[x]);
    };
  };
};



//Driver code
var an_array = [1, 3, 45, 43 ,30, 1, 5, 11, 15, 2]
console.log(super_fizz_buzz(an_array));



// What concepts did you solidify in working on this challenge?

// It harder to filter through on JS, plus I wasn't able to write the code in 1 line as I can do with Ruby.

// What was the most difficult part of this challenge?

// Remembering the syntax because we been switching back and forth.

// Did you solve the problem in a new way this time?

// I used the same method or same logic as Ruby.

// Was your pseudocode different from the Ruby version? What was the same and what was different?

// I tired to keep my puesdo code the dame as the orgianl way I had it.  Its the same as my puesdo code so I don't jump into any rabbit holes I can't get myself out of.