 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: A game that punch and kicks.  Calling it Hood Fighter(No relation to Street Fighter).  You have to fight through enemy in the hood to be the winner of the drug lord in the hood.
// Goals: Have a few commands like walk, kick, punch, and runaway.
// Characters: Main character is Jerome.
// Objects: To be the king of the hood.
// Functions: Walk, Kick, Punch, Leave the hood.

// Pseudocode
//Starting Charters

// Create first Player
// Player: name:  - ??????
//         health - 100%

// Create enemy he has to fight in the hood.
// Enemy: name: Thug
//         health: 100%

// He has a few ablity to fight someone in the hood.
// ablity: punch: reduce health
//         kick: reduce health

// Create a way were we can measure how hard these ablity hits.
// hit = #?

// Create a way to win or lose the game.
// If win or lose? Do what?


// Initial Code
// function Player(){
//   this.name = "First Player";
//   this.health = 100;
//   this.takeDamage = function(){
//     this.health = this.health - Math.floor(Math.random()*20);
//   };
//   this.takeLargeDamage = function(){
//   this.health = this.health - Math.floor(Math.random()*50);
//   };
// };

// function Thug(){
//   this.name = "Thug";
//   this.health = 100;
//   this.takeDamage = function(){
//     this.health = this.health - Math.floor(Math.random()*20);
//   };
//   this.takeLargeDamage = function(){
//   this.health = this.health - Math.floor(Math.random()*50);
//   };
// };


// function Game (){
//   this.punch = function () {
//     this.computer.takeDamage();
//     this.player1.takeDamage();
//       if (this.computer.health <= 0) {
//         console.log('You won');
//       } else if (this.player1.health <= 0) {
//         console.log('you\'re dead.game over');
//       } else {
//         console.log(this.player1.name + '\'s new health is ' + this.player1.health);
//         console.log(this.computer.name + '\'s new health is ' + this.computer.health);
//       }
//   };

//   this.special = function () {
//     this.computer.takeLargeDamage();
//     this.player1.takeLargeDamage();
//       if (this.computer.health <= 0) {
//         console.log('You won');
//       } else if (this.player1.health <= 0) {
//         console.log('you\'re dead.game over');
//       } else {
//         console.log(this.player1.name + '\'s new health is ' + this.player1.health);
//         console.log(this.computer.name + '\'s new health is ' + this.computer.health);
//       }
//   };
// };


// Refactored Code
function Player(name){
  this.name = name;
  this.health = 100;
  this.takeDamage = function(){
    this.health = this.health - Math.floor(Math.random()*20);
  };
  this.takeLargeDamage = function(){
  this.health = this.health - Math.floor(Math.random()*50);
  };
};


function Game (firstPlayer, secondPlayer){
  this.player1 = firstPlayer;
  this.computer = secondPlayer;

  this.punch = function () {
    this.computer.takeDamage();
    this.player1.takeDamage();
      if (this.computer.health <= 0) {
        console.log('You won');
      } else if (this.player1.health <= 0) {
        console.log('you\'re dead.game over');
      } else {
        console.log(this.player1.name + '\'s new health is ' + this.player1.health);
        console.log(this.computer.name + '\'s new health is ' + this.computer.health);
      }
  };

  this.special = function () {
    this.computer.takeLargeDamage();
    this.player1.takeLargeDamage();
      if (this.computer.health <= 0) {
        console.log('You won');
      } else if (this.player1.health <= 0) {
        console.log('you\'re dead.game over');
      } else {
        console.log(this.player1.name + '\'s new health is ' + this.player1.health);
        console.log(this.computer.name + '\'s new health is ' + this.computer.health);
      }
  };
};

//Driver codes
var player1 = new Player('Tim');
var enemy = new Player('Thug');
var newGame = new Game(player1, enemy);













// Reflection
//What was the most difficult part of this challenge?

// Understanding and breaking down the code.  Learning Ruby for so many weeks it took me a very long time to get the concept of JS down.  Because if this my syntax was all over the place.

// What did you learn about creating objects and functions that interact with one another?

// It was pretty fun but I don’t understand it fully.  So I just bad a very bare bone basic game to make sure I get the concept of it down instead of making something super complex.  I did work on the assignment by myself but on the DOM I asked for help.  The DOM isn’t refactored at all.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// I got a vague idea how to use it but I’m still not 100% on using JS yet.  I need more practice on JS to understand it more.
// I used Math.floor and Math.random on my assignment.  Those were the two that I used because I took the JS on codecademy.com  for the first time.  I saw those two as a good tool to use as damage done.

// How can you access and manipulate properties of objects?

// I learned that by doing the function which is also same as Class in Ruby it is starting to make it clear for me and to use “this.[variable]” is like attr in Ruby.
// //
//
//
//
//
//
//