puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp

puts "Hi #{first_name} #{middle_name}, My name is Aaron.  #{last_name} is a lovely family name."

puts 'What is your favorite number?'
favorite_num = gets.chomp
bigger_better = favorite_num.to_i + 1
puts "A bigger and better number than your favorite number is #{bigger_better}.  Time to go buy lottery now!!!"





#https://github.com/Aaron1515/phase-0/blob/master/week-4/address/my_solution.rb

#https://github.com/Aaron1515/phase-0/blob/master/week-4/math/my_solution.rb
=begin

How do you define a local variable?
  A local variable is a variable that could be used locally meaning with-in only the ruby file.
How do you define a method?
  To define a method you start by having "def" and next you will put the name of the method.  If there are parameter(s) you will put those in the "()" and seprate them with a comma.

What is the difference between a local variable and a method?
  Local variable can be used anywhere locally on the file.  Method are defined variable by the programer.  Method could also contain local variables as well.
How do you run a ruby program from the command line?
  First you can start the ruby command line by typing "irb" and type your codes there and test them out.
  Second you

How do you run an RSpec file from the command line?
  In command line you type "rspec [filename.rb]"  That will check the rspec to make sure you are running the code correctly.

What was confusing about this material? What made sense?
  What was confusing was the rspec file on 4.3.1 when I was checking rspec to make sure I was doing it correctly.  After reading the rspec file I was able to find that their example vs the rspec file given was off.  After reading the rspec and matching up the example I was able to figure out that there was an issues with either the example or the rspec file.  So therefor I used the string in rspec to pass my rspec check.  Everything in this excercise made a lot of sense.  I love back end programing!!!! Sorry html and CSS.

=end
