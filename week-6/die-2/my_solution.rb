# Implement a Reverse Polish Notation Calculator


# I worked on this challenge [myself].

# Pseudocode

# Input: Range of object or an array of objects
#
# Output: Take that array or range or object and display 1 random item from that array or range.
#
# Steps:

# Create a CLASS to perform this operation
# Initialialize the the first method that except a object
# Create a condition if the input is empty then RAISE argument error
# Declaire labels to be used with in the class method.
#
# Create a method for sides is is the total number of sides on the dice.
# Sides will equal the length of objects passing through the class.
#
# Create a method for random roll once.
# It should return 1 item from the object that was passed through the CLASS.


# Initial Solution




# 4. Refactored Solution

class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new('I need more than an array that has something in it.')
    end
    @labels = labels
  end
  def sides
    @labels.length
  end
  def roll
    @labels.sample
  end
end


# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

# The difference from last week to this week is there isn’t a range that we were working with but this week’s dice game is much easier then last week’s challenge.  Its most likely because I have been exposed to it and figure things out.

# I broke down my code using Pseudo Coding and I also made it super simple.  I didn’t need to change any of my logic because I wrote better pseudo codes.

# What does this exercise teach you about making code that is easily changeable or modifiable?

# With this challenge it teaches me how to think outside of the box because there was more thing I needed to learn because this was the same challenge from last week but a little tweaked from last week.  I kept the original array from the input and didn’t change anything unlike last week we made a range.

# What new methods did you learn when working on this challenge, if any?

# I used the method .sample to get a random item from the input the user gave.  It’s also the first time I had to use it and it came in very handy to keep my code simple.

# What concepts about classes were you able to solidify in this challenge?

# There wasn’t much that solidified because this challenge was the same as the challenge from last week.  But by doing more Classes I was able to do this much faster because I had a good understanding of classes already.