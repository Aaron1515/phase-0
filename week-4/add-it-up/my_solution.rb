# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# I worked on this challenge with [Jonathan silvestri]

# number in array, seprating each number then adding them all up

# Input: An array of numbers
# Output: The sum of the numbers in that array.

# Steps to solve the problem.
# Create an array of numbers.
# Define a method that accepts that array of numbers as an argument.
# Add all the numbers up together.

# 1. total initial solution

#def total(array_numbers)
#array_numbers.each { |sum| sum + x}
#end

# 2. total refactored solution

  def total(array_numbers)
    array_numbers.inject { |sum, x| sum + x }
  end

# 4. sentence_maker pseudocode

# Input: An array of words, written as string.
# Output: That array as a sentence.

# Steps to solve the problem.

# Create an array of strings
# Create a method that accepts that array as an argument.
# Join the strings into a single sentence.
# add a space between each string
# capitalize the first letter
# put a period


# 5. sentence_maker initial solution

#array_2 = ["hi", "how", "are", "you"]

#def sentence_maker(array_2)
#  sentence = array_2.join(" ").capitalize + "."
#end
#puts sentence_maker(array_2)

# 6. sentence_maker refactored solution

array_2 = ["hi", "how", "are", "you"]

def sentence_maker(array_2)
  sentence = array_2.join(" ")
  sentence.capitalize + "."
end

puts sentence_maker(array_2)