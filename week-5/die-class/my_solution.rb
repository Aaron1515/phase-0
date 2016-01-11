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
      raise ArgumentError.new('Wrong number of side silly.')
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

# Argument error is used to let user know that is the wrong argument.  It also helps prevent to the code from breaking.


# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# The  new argument error was the first time I have used it.   This is also the first time I created a Class method as well.  I'm still fuzzy about class but in due time as I create more class I will beable to learn and be comforable with it.

# What is a Ruby class?
# Ruby class is like a blue print of something youre building.  Like a blue print for a house.  A blue print for an orange, like a round ball that does or doesn't have a defined size or color.  After creating a the class.  You can build multiply things with a class just like a blue print of something you create.
#

# Why would you use a Ruby class?

#You would wan to build a class because you want to be efficient with your codes.  Such as if you where building a game.  You need to ask the user their name, username, email, age, and etc.  You don't want to write a code for each time a new player joins the game.  You can use a ruby class(blueprint) to ask the user all the information each time a new user joins the game.


# What is the difference between a local variable and an instance variable?

# Instance variable start with an @ sign.  It could be used with in the class.  It could be used within a method and disappear.  It could be reused for a later time.  It could also store data, such as every time you add 5 dollar to a piggy bank.  Each time you run something you can add to it if you have a method setup for it.

# A local variable only exsist within the method.  It can't be shared with another method.
#

# Where can an instance variable be used?

#A instance can be used within a instance for this excercise.