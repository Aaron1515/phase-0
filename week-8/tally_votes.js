// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: myself and sanderfer chau
// This challenge took me [4] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Part 1 challenge:
// Create a variable for all the names for votes.
// Create a variable for all the names in votes in voters in president choice.
// With the 2 variable we can target the voters choices.
// If the elected name isn't on the list aready add it to the list with a vote of one
// If this name exsist already then just add 1 to his total count

// Part 2 challenge:
// Create a variable for the names in voteCount in canidates, and also make canidates an variable.
// Create a counter for the highest votes and set the default to 0
// Start the count for who has the highest votes, if they have the highest votes put their name on the list as winner.  It may get replaced by the next person that is going to have a higher vote.



// __________________________________________
// Initial Solution
// for (var name in votes){
//   // console.log(votes[name]['president']);
//   if (voteCount['president'][votes[name]['president']] === undefined){
//   voteCount['president'][votes[name]['president']] = 1
//   } else {
//   voteCount.president[votes[name]['president']] += 1
//   }
// }

// for (var name in votes){
//   // console.log(votes[name]['vicePresident']);
//   if (voteCount['vicePresident'][votes[name]['vicePresident']] === undefined){
//   voteCount['vicePresident'][votes[name]['vicePresident']] = 1
//   } else {
//   voteCount.vicePresident[votes[name]['vicePresident']] += 1
//   }
// }

// for (var name in votes){
//   // console.log(votes[name]['secretary']);
//   if (voteCount['secretary'][votes[name]['secretary']] === undefined){
//   voteCount['secretary'][votes[name]['secretary']] = 1
//   } else {
//   voteCount.secretary[votes[name]['secretary']] += 1
//   }
// }

// for (var name in votes){
//   // console.log(votes[name]['treasurer']);
//   if (voteCount['treasurer'][votes[name]['treasurer']] === undefined){
//   voteCount['treasurer'][votes[name]['treasurer']] = 1
//   } else {
//   voteCount.treasurer[votes[name]['treasurer']] += 1
//   }
// }

//compare
// for (var runningFor in voteCount){
//   var counter = 0;
//   for (var canidates in voteCount[runningFor]){
//     var allVotes = voteCount[runningFor][canidates];
//       if (counter < allVotes){
//         counter = allVotes;
//         officers[runningFor] = canidates;
//       }
//   };
// };


// __________________________________________
// Refactored Solution

for (var name in votes){
  for (var title in voteCount){
    if (voteCount[title][votes[name][title]] === undefined){
      voteCount[title][votes[name][title]] = 1
    } else {
      voteCount[title][votes[name][title]] += 1;
    }
  }
}

for (var runningFor in voteCount){
  var counter = 0;
  for (var canidates in voteCount[runningFor]){
      if (counter < voteCount[runningFor][canidates]){
        counter = voteCount[runningFor][canidates];
        officers[runningFor] = canidates;
      };
  };
};

//Driver code
console.log(officers)

// __________________________________________
// Reflection


// What did you learn about iterating over nested objects in JavaScript?

// I learned a new method using “for (name in voteCount[‘president’]) a new way to iterate over names.  It gets confusing when its so nested in the object.  Somewhat hard to keep track of where things are going.

// Were you able to find useful methods to help you with this?

// Yes, through trial and error and back and forth I was able to get the challenge done.  The for method is more commonly used then just the for (var counter = 0; counter < something.lenght; counter++)
// Its also used to do similar things in iterating over nested  objects.

// What concepts were solidified in the process of working through this challenge?

// Well, its still a bit confusing but I just need to do more of it.  I have tried this challenge many times over and over again and seeing different results.  By using the FOR method there’s a lot more to it then a counter.




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
