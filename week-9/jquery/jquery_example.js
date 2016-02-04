// U3.W9:JQuery


// I worked on this challenge [by myself, with: sanderfer chau ].
// This challenge took me [.5] hours.

$(document).ready(function(){

//RELEASE 1:
  //link the image

//RELEASE 2:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 3:
bodyElement = $('body')


//RELEASE 4:
$('body > h1').css({'color': 'blue'})
$('body > h1').css({'border-style': 'solid'})
$('body > h1').css({'border-color': 'yellow'})
$('body > h1').css({'visibility': 'initial'})
//RELEASE 5: Event Listener
  $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'imgs/fiddler_crabs.png')

        var audio = {};
        audio["walk"] = new Audio();
        audio["walk"].src = "audio/krabs_laugh.mp3"
        audio["walk"].play();

  })


//RELEASE 6: Experiment on your own

//Added audio to Crabs hover over.




})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// What is jQuery?

// jQuery is a feature-rich JavaScript library. It makes things like HTML document traversal and manipulation, event handling, animation, and Ajax much simpler with an easy-to-use API that works across a multitude of browsers.

// What does jQuery do for you?

// To me jQuery is fun to play around with and makes adding audio and manipulation very fun.  I get a good laugh out of krusky krabs laugh.  The little things in life are fun.

// What did you learn about the DOM while working on this challenge?

// I learned how to add audio with jquery and it seems about the same as doing it in JS.  While some syntax are easier to do in jquery and some are easier in JS. I'm sure I want to learn more about JS then use jquery as a tool to make JS easier for me.