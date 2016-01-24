// Here is the Person 1, 2, 3, & 4 parts:
//  User Stories
// 1. As a user, I want the get the sum for a list of numbers.
// 2. As a user, I want to get the average for a list of numbers.
// 3. As a user, I want to find middle number in a list of numbers.


// PSUEDOCODE
// test for sum
// 1. Declare a function called “sum” which has an array as its parameter.
// 2. Create a variable called “total” and assign number 0 as its starting value.
// 3. Loop through the input array and add each number to the variable “total”.
// 4. Return variable “total”


function sum(array) {
 var total = 0;
 for (var i = 0; i < array.length; i++){
   total = total + array[i];
 }
 return total;
}

// test for mean
// 1. Declare a function called “mean” which has an array as its parameter.
// 2. Create a variable called “total” and assign number 0 as its starting value.
// 3. Loop through the input array and add each number to the variable “total”.
// 4. Retrieve the length of the array and have the total divided by it and then assign it into a new variable called “result”.
// 5. Return the “result”.

function mean(array) {
 var total = 0;
 for (var i = 0; i < array.length; i++){
   total = total + array[i];
 }
 var result = total/(array.length);
 return result;
}


// test for median
// 1. Declare a function called “median” which has an array as its parameter.
// 2. Retrieve the length of the array.
// 3. Sort the array from small to large (If the array is not in order)
// 4. Have the length of the array plus 1 then divided by 2 to retrieve the position of the median.
// 5. For an odd number items array, the median should be the middle number. For an even number items array, the median should be the average of the middle 2 number.


function median(array) {
 // Define function for numerical sorting
 function sortNumber(a,b) {
   return a - b;
 }
 // Begin median calculation
 var len = array.length;
 var array_sort = array.sort(sortNumber);
 // if length is EVEN
 if (array.length % 2 === 0) {
   var median1 = (len - 2)/2;
   var median2 = (len)/2;
   var median_even = (array_sort[median1] + array_sort[median2]) / 2;
   return median_even;
 }
 // if length is ODD
 else {
   var median = (len - 1)/2;
   return array_sort[median];
 }
}




//Refacoring : Person 5
//Create a Function that accept a list of numbers and add it up.
// function sum(array) {
//   //Create an empty container that will be our total number.
//  var total = 0;
//  //For each number we have on the list add it to the total container.
//  for (var i = 0; i < array.length; i++){
//    total += array[i];
//  }
//  //Give us the total after adding all the number from the list.
//  return total;
// };

// //Create a Function that will give us the average of a list of numbers.
// function mean(array) {
//   //Create an empty container that is going to contain our total number of things added from our list.
//  var total = 0;
//  //Create a function that will add all our numbers from the list to the empty container.
//  for (var i = 0; i < array.length; i++){
//    total += array[i];
//  }
//  //Take the total and devide it by how many is in the list.
//  return total/(array.length);
// }

// //Create a function that will give us the median of numbers from a list
// function median(array) {
//   //Sort our list from lowest to highest.
//  function sortNumber(a,b) {
//    return a - b;
//  }
//  //Count how many things is on our list
//  var len = array.length;
//  // Create 2 scenairo, if the number is an even numbers of items on the list or odd numbers on the list
//  var array_sort = array.sort(sortNumber);
//  if (array.length % 2 === 0) {
//   // If it is an even number on the list, we get our frist number by dividing the list in half and getting the two number that is in the middle and dividing it in half and that will give us the answer.
//    return (array_sort[(len - 2)/2] + array_sort[(len)/2]) / 2;
//  }
//  // If list is an odd number, then divide the list in half and subtract 1 from that because JavaScript start its count at 0.
//  //
//  else {
//    return array_sort[(len - 1)/2];
//  }
// }


function sum(array) {
 var total = 0;
 for (var i = 0; i < array.length; i++){
   total += array[i];
 }
 return total;
};

function mean(array) {
 var total = 0;
 for (var i = 0; i < array.length; i++){
   total += array[i];
 }
 return total/(array.length);
}

function median(array) {
 function sortNumber(a,b) {
   return a - b;
 }
 var len = array.length;
 var array_sort = array.sort(sortNumber);
 if (array.length % 2 === 0) {
   return (array_sort[(len - 2)/2] + array_sort[(len)/2]) / 2;
 }
 else {
   return array_sort[(len - 1)/2];
 }
}