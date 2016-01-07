# Numbers to Commas Solo Challenge

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? separate_comma(1000000)
# What is the output?  => "1,000,000"
# What are the steps needed to solve the problem? Take the number and count 3 index starting from behind and add a "," .
# Then for higher numbers, keep adding to the code.  It is very redundant but nessaray to keep what I write down at a simple and basic level of ruby.


# 1. Initial Solution
def separate_comma(your_number)
your_number = your_number.to_s
  if your_number.length < 4
    return your_number
  elsif
    your_number.length >= 4 && your_number.length <= 6
      return your_number[0..-4] + ',' + your_number[-3..-1]
  elsif
    your_number.length >= 7 && your_number.length <= 9
      return your_number[0..-7] + ',' + your_number[-6..-4] + ',' + your_number[-3..-1]
  elsif
    your_number.length >= 10 && your_number.length <= 12
    return your_number[0..-10] + ',' + your_number[-9..-7] + ',' + your_number[-6..-4] + ',' + your_number[-3..-1]
  end
end



# 2. Refactored Solution
#
# def separate_comma(your_number)
# formatted_n = your_number.to_s.reverse.gsub(/...(?=.)/,'\&,').reverse
# return formatted_n
# end


# 3. Reflection
#
# What was your process for breaking the problem down? What different approaches did you consider?
#
# I didn't thought of a few ways to do it.  One was reversing the number and adding commas and re-reversing it after the commas was added on.  Then I notice the answer was returning a string.  So I used the indexing technique to add commas to it.  The code can get pretty long if there are more numbers.
#
# Was your pseudocode effective in helping you build a successful initial solution?
#
# Yes, I love pseudocoding.  It spent more of my time doing pseudocing then actually writing the code out.

#
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#
# How did you initially iterate through the data structure?
#
# First I didn't know it was returning a string so I had a hard time padding commas to a fixnum.  Then I kept looking at it.  Then I notice that the answer was put in side of "" so the answer is an string.  I didn't read the rspec file.  I wanted to figure it out first beore I look at the rspec.  Or at least give it a try first.
#
# Do you feel your refactored solution is more readable than your initial solution? Why?
#
# The refactored version worked much better before you can use it with large numbers.  It reverse the number and puts it in a string.  Adds commas from every 3 indes and re-reverse it.  Its much harder to see whats going on because I don't or never use some of the build in methods yet.  But I can make out most of what was going on.
