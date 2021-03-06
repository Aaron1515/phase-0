// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: with Sanderfer Chau

// Pseudocode
// Take a large number and add commas
// take the NUMBER and turn it into a STRING, SEPARATE IT, REVERSE IT, AND JOIN IT BACK TOGETHER
// the number now should be reversed.
//
// create an empty container called CorrectNumber
// take the last three and add a comma to it and insert it to the container
// subtract the first 3 from the Revsered number
// Do this till the LENGTH of the number is 4 or less.
// Then add the rest of the numbers to the empty container if there is any.
//
//Take the empty contrainer, JOIN it together, SEPARATE IT, REVERSE IT, JOIN IT.  Then call it.



// Initial Solution

// var number = 123456789;

// function seprateComma(num) {

// // var num = 123456789;

// num = num.toString().split("").reverse().join("");;
// console.log(num)


// var revNum = num;

// var corNum = [];

// //Create a way to take 3 add a comma
// corNum.push(revNum.substring(0,3) + ",");
// console.log(corNum);
// //Remove 3 from reverse number
// revNum = (revNum.slice(3));

// corNum.push(revNum.substring(0,3) + ",");
// console.log(corNum);
// revNum = (revNum.slice(3));

// //Driver code
// console.log(revNum.length)

// // If less than 4 do this.
// corNum.push(revNum.substring(0,3));


// corNum = corNum.join("");
// corNum = corNum.split("").reverse();
// corNum = corNum.join("")
// console.log(corNum)
// };

// //Driver code
// seprateComma(number);



// Refactored Solution

function seprateComma(num) {

  var revNum = num.toString().split("").reverse().join("");
  var corNum = [];

  while (revNum.length >= 4){
    corNum.push(revNum.substring(0,3) + ",");
    revNum = (revNum.slice(3));
    }

  corNum.push(revNum.substring());

  console.log(corNum.join("").split("").reverse().join(""));

};


// Your Own Tests (OPTIONAL)

//Driver code
seprateComma(123456111117189);

// Reflection



// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// I ran into so much issues with JavaScript.  There aren’t as much build in methods as Ruby and a lot of things was very foreign to me because I never learn JavaScript and its a big world out there.  But with the knowledge of Ruby’s concepts we were able to tackle this problem.

// What did you learn about iterating over arrays in JavaScript?

//   I learned how to use a FOR loop and what I was able to do with it.  I didn’t do the index like most people did.  I took a different approach to the problem.

// What was different about solving this problem in JavaScript?

//   I had to use different loop but the concept was pretty much the same as the last one we did in Ruby.  I think I did a better job in JavaScript even with less tools.  I hope its just skill level of programing has increased a bit.

// What built-in methods did you find to incorporate in your refactored solution?

//   I used the WHILE loop to loop through the Array I setup for the numbers.