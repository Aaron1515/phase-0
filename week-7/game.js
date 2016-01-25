 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: A game that punch and kicks.  Calling it Amazing Fighter(No relation to Street Fighter).  You have to fight through enemy to be the winner of the game.
// Goals: Have a few commands like punch or kick.
// Characters: Main character is Jerome.
// Objects: To be the king of the game.
// Functions: punch and kick.

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
newGame.punch();
newGame.special();




// Reflection
//What was the most difficult part of this challenge?

// Let me start by saing JavaScript was my frist new language in DBC.  I was not prepared for this up hill challenege.  Understanding and breaking down the code.  Learning Ruby for so many weeks it took me a very long time to get the concept of JS down.  Because of this my syntax was all over the place.  I wanted to refactor more on my code however I don't know enough about JS to do much refactoring.  I would love to learn more about it but because JS gave me such a hard time I spent a lot of time watching youtube videos and researching.  My researh didn't get me much information.  I used the office hours and ask a lot of questions.  I freaked out this week because I felt compeletely lost this week.  Beside JS the other part that was challenging was keeping my emotion in place where I felt like I can't do this.

// What did you learn about creating objects and functions that interact with one another?

// It was pretty fun but I don’t understand it fully.  So I just made a very bare bone basic game to make sure I get the concept of it down instead of making something super complex.  I have to admit that I had help from guide and cohorts to complete this challenge.  I know it was a solo challenge but I couldn't complete it with out their help.  I needed to understand the concept of var and function and why var x = function(){};.  Because I ran into so much rabbit holes and why my syntax wasn't working most of the time because of bad spelling and minor tweeks.  I definitely learned how to utilize an object and create functions.  Its very simular to Ruby Hash and methods in Ruby.  After it was explained to me in a way that I caught the concept of it.  I was able to do more and feel a bit comfortable and could relax a bit.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// I got a vague idea how to use it but I’m still not 100% on using JS yet.  I need more practice on JS to understand it more.  It seems like JS their syntax is more of a lowercase and upper case on the next word.  I need to keep reading on what methods that are build in and that should help me out.
// I used Math.floor and Math.random on my assignment.  Those were the two that I used because I took the JS on codecademy.com  for the first time.  I saw those two as a good tool to use as damage done.  There was a switch, I decided to use it in the beginning and changed my game and just use the if else case instead.  Because the if else works better and shorter because I didn't have that much if else statements in the game.

//When I created a function and objects in side of the function I guess it works like a function as well.  So I think I created my own function.

// How can you access and manipulate properties of objects?

// I learned that by doing the function which is also same as Class in Ruby it is starting to make it clear for me and to use “this.[variable]” is like attr in Ruby.
//
//