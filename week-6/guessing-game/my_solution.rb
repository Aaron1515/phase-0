
# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Random number(the correct number)
# Output: Random number to get the correct answer
# Steps:

# Create a class called GuessingGame

# Create a method called initialize
# Set 2 CLASS variables
#   First one is answer
#   Second is the guessing number
# Create a method called guess
# The method should return higher or lower or correct.


# If guessing number is higher than answer reply with Lower.
# Then store the guessing number
# If guessing number  is lower than answer reply with higher.
# Then store the guessing number
# If guessing number is equal to answer reply with Correct.
# Then store the guessing number
# End the if scenario


# Create a method called solved?
# If the answer is equal to the guessing number reply with Solved.
# If not then answer it with NO it has not been solved.
# End this method


# Initial Solution

#
# Create a class called GuessingGame
class GuessingGame
  # Create a veriable called last answer
  attr_accessor :guess
  # Create a method called initialize
# Set 1 CLASS variables
#   First one is answer
  def initialize(answer)
    @answer = answer
  end

# Create a method called guess
  def guess(guessing_number)

# The method should return higher or lower or correct.

# If guessing number is higher than answer reply with Lower.
    if guessing_number < @answer
      :low
# Then store the guessing number

# If guessing number  is lower than answer reply with higher.
    elsif guessing_number > @answer
      :high
# Then store the guessing number

# If guessing number is equal to answer reply with Correct.
    elsif guessing_number == @answer
      :correct
# Then store the guessing number

# End the if scenario
    end
  end

  def solved?
# Create a method called solved?
# If the answer is equal to the guessing number reply with Solved.
    @guess == @answer
# If not then answer it with NO it has not been solved.
# End this method
  # Make sure you define the other required methods, too
  end
#Driver Code - Display last guess number
  def last_guess
    @guess
  end
end



# Refactored Solution






# Reflection