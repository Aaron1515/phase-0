# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# Create a method that will take an array of strings, array, or mix of both.

# Create a new Hash inside of the method.  For each object that pass the block.  Add 1 to the object in the Hash.

# Create a new empty Array.

# Push any items that has the max numbers in the Hash into the Array.  But only pushing the key in.

# Return the Keys in the Array and sort it. Sort wasn't really needed but seems like a good idea.

# What is the input?
# In put is an array.
# # What is the output?
# Out put will the max values of an array.
# # What are the steps needed to solve the problem?
# First we have to create an empty hash.  Each time the a object


def mode(something)
  list = Hash.new(0)
  something.each do |num|
    list[num] += 1
  end
  new_array = []
  list.each do |k, v|
    if v == list.values.max
      new_array << k
    end
  end
  new_array.sort
end


# 3. Refactored Solution

# def mode(something)
#   list = Hash.new(0)
#   something.each { |num| list[num] += 1 }
#   new_array = []
#   list.each do |k, v|
#     if v == list.values.max
#       new_array << k
#     end
#   end
#   new_array.sort
# end


# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
#
#We decided to use an array and hash to complete the challenge.
#

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

# We was able to break it down fairly easy this time around.


# What issues/successes did you run into when translating your pseudocode to code?

# We ran into a lot of issues with finding the correct syntax to use.  We ran into issues with typos as well in the syntax.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# We used .each to iterate over the syntax.