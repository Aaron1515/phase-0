
# Build a simple guessing game


# I worked on this challenge [myself].
# I spent [3] hours on this challenge.

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
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

  I used attr_accessor for our guessing game that will read and write to the class we re calling.  Its like a bank account, Where you want your balance to change when you make a deposit or withdraw.  Some might not want to change balance when we go to an ATM to withdraw but it doesn’t work that way.

When should you use instance variables? What do they do for you?

  Instance variable are used within a method and disappear.  There are times when you don’t need to keep the variables around when you don’t need to keep that bit of information such as just passing a ‘true’ or ‘false’ information.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

  I ran into some issues with keeping the stored info with the guessing number but I got that cleared up during office hours. It was a way to keep the number after it has been passed as true.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

  You can’t change a symbol unlike a string or an integer.  So the key will stay the same.
=end