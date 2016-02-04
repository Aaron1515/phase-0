
# Reverse Words


# I worked on this challenge [by myself, with: Sanderfer Chau ].
# This challenge took me [.3] hours.

# Pseudocode
# Reverse each word in a sentence:
# Input: "I heart Ruby!"
# Output: "!ybuR traeh I"

# Crate a method that can reverse a sentence but keeping the spaces.
# First create and empty array to contain all the words.
# Split each word up and put it in the Array.
# Take each word in the array and reverse it.
# Join them back to gether with a space in between them.
# Return the Sentence.


# Initial Solution

# def reverse_words(sentence)
#   reversed = sentence.split(/ /)
#   reversed.map! {|x| x.reverse}
#   answer = reversed.join(" ")
#   return answer
# end

# Driver code
# bust_a_u("I heart Ruby!")

# Refactored Solution

def reverse_words(sentence)
  return sentence.split(/ /).map!{|x| x.reverse}.join(" ")
end


# Reflection
# What concepts did you review in this challenge?

# I revieved the .split, .map!, .reverse. and .join command.
# It was so simple that I forgot a lot of the steps.  I'm glad I'm getting better at refactoring.  However it seems like the system took .000003 seconds to load the refactored solution.

# What is still confusing to you about Ruby?

# Nothing but remembing the syntax again was a bit harder.

# What are you going to study to get more prepared for Phase 1?

# Yes, I'll research more on Classes and different methods and also build in methods to use Ruby.