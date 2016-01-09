# Die Class 1: Numeric

# I worked on this challenge [myself ]

# I spent [2] hours on this challenge.

# 0. Pseudocode

# Input: An unknown number of sides to a dice, roll the dice with a random side.
# Output: Roll a dice with 6 sides, and roll it, and it will come up with a number between 1-6.
# Steps:
# Create an Object called DIE.
# Initial the side by calling it @side so it could be used within the class.
# Define the number of sides on the dice.
# Roll the dice with the number of sides on the dice.
# Then find a way to create an arrgument error.


# 1. Initial Solution
#Create Die class
class Die
#create sides of the dice
  def initialize(sides)
    #Create argumenterror, respond with argument error
    if sides < 1
      raise ArgumentError.new('ArgumentError')
    end
    @sides = sides
  end
#create numbers of the sides of the dice
  def sides
    @sides
  end
  #roll the dice between 1 and the number of sides of the dice.
  def roll
    rand(1..@sides)
  end
end



# 3. Refactored Solution

# I found a quick dice roll on refactoring but doens't give option on dice sides but could easliy modify to except any sides by changeing 6 to an variable.

# class Die
# def roll
# 1 + rand(6)
# end
# end
# dice = [Die.new, Die.new]

# dice.each do |die|
# puts die.roll
# end





# 4. Reflection


# What is an ArgumentError and why would you use one?

# Argument error is used to let user know that it can't except or skip steps inorder to use the class.  Pretty much to prevent issues with the crated Class.


# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# The  new argument error was the first time I have used it.   This is also the first time I created a Class method as well.  I'm still fuzzy about class but in due time as I create more class I will beable to learn and be comforable with it.

# What is a Ruby class?

# Class is an instance you can create.  Such as creating a Class of tree and you can add types of trees, height, and add height to it at a later time as long as you are in the same instance of that class.  You can also create new methods within that class instance.

# Why would you use a Ruby class?

# One example of using ruby class is if you are creating a game.  You ask the user for its user name, name, last name, type of charater, and so forth.  And you want to use it for the next user with out typing another set of codes for the 2nd user.  The class could be used over and over again.


# What is the difference between a local variable and an instance variable?

# Local variable could be used within the the session.  An instance veriable could only be used in the instance while you're with in the class instance.

# Where can an instance variable be used?

# An instance variable could be used with in the Class instance.  Once you exit out the class instance that you are in, the variable are no longer saved or valid.