 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up

// Create the 2 objects
// Create an Array of the 2 objects
// Crate a loop for each object that pass to create a sentence.

var sarah = {
  name = 'Sarah Hughes',
  event = 'Ladies + Single'
}

var michaelPhelps = {
  name = 'Michael Phelps'
  event = 'Olympics'
}

var athlete = [sarah, michaelPhelps]

function addWinProperty (athlete) {
  for ( x=0; x<athlete.length; x++) {
athlete[x].win = console.log(athlete[x].name + ' won the ' + athlete[x].event)
  }

}

//Driver code
addWinProperty(athlete);

// Jumble your words
//Pseudo code, split the words, reverse it and join it back together, Print it out
function zaZZam(word){
  console.log(word.split("").reverse().join(""))
}
//Driver code
zaZZam("Aaron!")



// 2,4,6,8

//Pusedo Coding,
// Create a empty array to cal later
// For each number in the array starting with index 0, if it is an even number put it in the empty array
// call the empty array with even numbers.


function even_num(num){
  var newArray = [];
  for(var x = 0; x < num.length ; x++){
      if(num[x]%2==0) {
        newArray.push(num[x]);
      };
  };
  console.log(newArray)
};
// console.log(a.length)


//Driver code
var a = [1, 2, 4, 5, 6, 7, 8, 9, 12, 34];
even_num(a)




// "We built this city"
function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}



var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

//seeing on the bottom there's 'age', name', 'sports', and qoute that is needed to create this object
// on var miachelPhelps the name is called Athlete.
// Create a function called 'Athlete'
// 4 Parameters of name, age, sport and qoute.
// For each of these object define them as this so I can be called outside of the function.

// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// First it seems like in Ruby to make a Class we use the name class to define a class. In JS we used function to define a class on the last challenge.  Is so similar to Ruby that I need more practice on this before going on.  There’s a lot of cohort that is getting this concept and I’m not.  However the FOR loop is starting to make sense at this point.

// What are constructor functions?

// Constructor functions are kinda like a Ruby class variable.  When you crate an instance of the function you can use the constructor like creating a class variable within that instance.

// How are constructors different from Ruby classes (in your research)?

// There isn’t anything called constructor function in Ruby.  But it just seems like a class variable to me.  I wasn’t able to find much different from the ruby classes because their concept are the same.
