# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
# Create a method to count each number on the array.
# Create an empty container to house the results.
# If the number is divisible by 15, call FIZZ BUZZ!!!!
# If a number is divisible by 3, call out Fizz!
# If a number is divisible by 5 then call out Buzz!
# Else return the number.


# Initial Solution

# def super_fizzbuzz(array)
#   array.map! do |x|
#     if
#       x % 15 == 0
#       x = "FizzBuzz"
#     elsif
#       x % 3 == 0
#       x = "Fizz"
#     elsif
#       x % 5 == 0
#       x = "Buzz"
#     else
#       x
#     end
#   end
# end



# Refactored Solution

def super_fizzbuzz(array)
  array.map! do |x|
  x % 15 == 0 ? x = "FizzBuzz" : x % 3 == 0 ? x = "Fizz" : x % 5 == 0 ? x = "Buzz" : x
  end
end


# Reflection
# What concepts did you review or learn in this challenge?

# I review the destructive way to change an array.  I also used an comparison tool for he refactoring so I can run in 1 line.  The time it took 0.00186 seconds in my initial solution.  My refactoring version took only in 0.00131 seconds.  With a huge app running seconds matter depending on internet speed.  I’m sure there is also a way to make it shorter.

# What is still confusing to you about Ruby?

# Ruby isn’t confusing but because we just learned Java Script.  I keep adding semicolon to things where it should be.  I took an easier challenge because this is a review.  I wanted to go slow on my first review.  I’ll try to knock more than 1 review out the way so I can take it slow and go up as Ruby syntax comes back to me.

# What are you going to study to get more prepared for Phase 1?

# I need more knowledge on Java Script.  Also need more practice on Class in Ruby as well.