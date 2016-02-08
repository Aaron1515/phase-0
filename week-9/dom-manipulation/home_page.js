// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: Sanderfer Chau].


// Add your JavaScript calls to this page:

// Release 0:



// Release 1:
var done = document.getElementById('release-0');
done.classname = 'done';


// Release 2:
var release_1 = document.getElementById('release-1');
release_1.style.display = 'none';


// Release 3:
var replacingH1 = document.getElementsByTagName("h1");
replacingH1[0].innerHTML = "I completed release 2.";

// Release 4:
document.getElementById('release-3').style.backgroundColor = "#955251";



// Release 5:
var changeSize = document.getElementsByClassName("release-4");
changeSize[0].style.fontSize = "2em";
changeSize[1].style.fontSize = "2em";
// Release 6: Append HTML

var temp = document.getElementById('hidden');
document.body.appendChild(temp.content.cloneNode(true));


// Reflection:

// What did you learn about the DOM?

// Learn how to use hidden and un hide divs.  I also learned how to use templetes and add it to the website to test it before pushing complete package up to the server side as well.  Was getting great at document.get stuff now.  By class, id and element.

// What are some useful methods to use to manipulate the DOM?

// I learned getElement by class, ID or tagname to make sure it loads first before I can manipulate it.  The .appendChild was new for me as well as the .innerHTML.  But I'm starting to see how JavaScript gets intergraded with HTML now.