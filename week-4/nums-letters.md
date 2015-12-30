#4.2 Numbers, Letters, and Variable Assignment (medium)


##What does puts do?

````puts```` will print the output to the console and creates a new line, if you are trying to continue the whole out-putting and not skip a line.  Then you might want to use ````prints```` instead of puts.

##What is an integer? What is a float?

Interger is a whole number.  A float is a number with a decimal point, even a number like 4.0 is a float.  4.0 is a whole number but it has a decimal point, it is a float.

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

I shall give an example for it.

Integer division.<br />
If you divide :> ````7 / 4````   You get     :> ````1````
<br />
Float division<br/>
if you divide :> ````7.0 / 4````  You get    :> ````1.75````
<br />
As you can see using interger for division you don't get the remainder and if you use float you will get a exact answer in math.

In a real life situation example of integer division.  If you had 10 dollars in your pocket and you was on a date.  The entrance to the park cost 7 dollars.  Only 1 person can go in, because its impossible for 1 3/4 of a person to go in the park.  That's why interget only returns one.  Because only 1 person can go in.  Also on a side note that has nothing to do with programing, if one person go in the park, the date is pretty much over by that point.

##Mini-challenges

####Hours in a year
````puts 365*24```` = 8760 Hours

####Minutes in a decade
````puts 10*365*24*60```` = 5256000 Minutes

This is concidering that there's no leap years.

##4.2.1 Defining Variables
https://github.com/Aaron1515/phase-0/blob/master/week-4/defining-variables.rb

##4.2.2 Simple String Methods
https://github.com/Aaron1515/phase-0/blob/master/week-4/simple-string.rb

##4.2.3 Local Variables and Basic Arithmetical Expressions
https://github.com/Aaron1515/phase-0/blob/master/week-4/basic-math.rb

#Reflection

##How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Addition (+)<br />
:>````1 + 1````<br />
:>````2````<br />
Subtraction (-)<br />
:> ````2 - 1````<br />
:>```` 1````<br />
Multiplication (*)<br />
:> ````3 * 3````<br />
:>```` 9````<br />
Division (/)<br />
:>```` 3 / 3````<br />
:> ````1````<br />
Ruby handle simple math like a calculator.  For more complex math it could use tan, sin, and you can also create your own method to do math.

##What is the difference between integers and floats?

Integer will always be an integers when doing math.  Such as 7/4 equals to 1.  It doesn't return the remainder.  However with floats, 7.0/4.0 will return 1.75 .  Wth floats its great if you're actually doing real math with it.

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

I shall give an example for it.

Integer division.<br />
If you divide :> ````7 / 4````   You get     :> ````1````
<br />
Float division<br/>
if you divide :> ````7.0 / 4````  You get    :> ````1.75````
<br />
As you can see using interger for division you don't get the remainder and if you use float you will get a exact answer in math.

In a real life situation example of integer division.  If you had 10 dollars in your pocket and you was on a date.  The entrance to the park cost 7 dollars.  Only 1 person can go in, because its impossible for 1 3/4 of a person to go in the park.  That's why interget only returns one.  Because only 1 person can go in.  Also on a side note that has nothing to do with programing, if one person go in the park, the date is pretty much over by that point.

##What are strings? Why and when would you use them?
Strings are an infinite sequence of charathers that can contain numbers, letters,symbols, and punctuation marks.  Becareful with some punctuation marks such as " ", they can take you out of the string.  By defeated the "" in side of your string you can use "/" to ignore the ending of your string.
Strings are mostly used to print something on the screen for the end user to see or testing your code.


##What are local variables? Why and when would you use them?
Local variable is a variable that is only used on the current file you're on.  You can not use a local variable on a compeletely different file.  Local variable will be something you desiginate what it is.  Then you can reuse it over and over agian.  If you where to say, "Hi, how are you?" in the beginning, middle and end of the converstaion.  You do not want to type it 3 times.  So you can create a ````greeting = "Hi, how are you?"``` so everytime you type greeting, it display "Hi, how are you?".

##How was this challenge? Did you get a good review of some of the basics?
This was a great basic review of ruby and what we had learn before the interview.  I always enjoy a review before we start the harder challenge and a nice refresh.
