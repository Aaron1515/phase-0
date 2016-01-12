
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
# class GuessingGame
#   attr_reader :answer
#   def initialize(answer)
#     @answer = answer
#   end
#   def guess(guessing_number)
#     if guessing_number < @answer
#       @guessing_number = guessing_number
#       :low
#     elsif guessing_number > @answer
#       @guessing_number = guessing_number
#       :high
#     elsif guessing_number == @answer
#       @guess = guessing_number
#       :correct
#     end
#   end

#   def solved?
#     @guessing_number == @answer
#   end
# #Driver Code - Display last guess number
#   def last_guess
#     @guessing_number
#   end
# end


# Refactored Solution

class GuessingGame
 attr_reader :answer
  def initialize(answer)
    @answer = answer
  end
  def guess(guessing_number)
    @guessing_number = guessing_number
    if guessing_number < @answer
      :low
    elsif guessing_number > @answer
      :high
    elsif guessing_number == @answer
      :correct
    end
  end
  def solved?
    @guessing_number == @answer
  end
  def last_guess
    @guessing_number
  end
end




# Reflection
=begin

=end