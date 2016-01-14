
#Attr Methods

# I worked on this challenge [myself]

# I spent [3] hours on this challenge.

# # Psuedo Code:

# # Input:Input a name or a string
# # Output:"Hello [name here]! How wonderful to see you today."
# # Steps:
# Create a class to collect the name

# Create a 2nd class called Greetings that except 1 argument.
# Nest CLASS NameData inside of Greetings so we can re-use NameData

# Create a method that puts Hello to the new student accessing data from the newly created data.
# I will add driver code to explain the visual of how it came out.

class NameData
  attr_accessor :name
  def initialize(your_name)
    @name = your_name
  end
end

class Greetings
  attr_accessor :name_data
  def initialize(name)
    @name_data = NameData.new(name)
  end
  def hello
    puts "Hello #{name_data.name}! How wonderful to see you today."
  end
end

# #Driver code
# p aaron = NameData.new("Aaron")
# p aaron.name

# p byron = Greetings.new("Byron")
# p byron.hello

# #console returns
# #<NameData:0x00000001d49fd0 @name="Aaron">
# "Aaron"
# #<Greetings:0x00000001d49cd8 @name_data=#<NameData:0x00000001d49cb0 @name="Byron">>
# Hello Byron! How wonderful to see you today.



# +++++++++++++++++++++++++++++++++++++++++++++++++++++

# Release 1: Read and Research (READER)

# +++++++++++++++++++++++++++++++++++++++++++++++++++++


# ------------------------------------------------------
# What are these methods doing?
# ------------------------------------------------------

#   def change_my_age=(new_age)
#     @age = new_age
#   end
#   def change_my_name=(new_name)
#     @name = new_name
#   end
#   def change_my_occupation=(new_occupation)
#     @occupation = new_occupation
#   end

# These methods are setting new values and replacding the default values set in the itintalize.


# ------------------------------------------------------
# How are they modifying or returning the value of instance variables?
# ------------------------------------------------------

    # @age = 27
    # @name = "Kim"
    # @occupation = "Cartographer"

    # Are the default or starting values of age, name and occupations.

    # When using .change_my_age, .change_my_name, and .change_my_occupation.
    # We are able to replace the values of those 3.









# +++++++++++++++++++++++++++++++++++++++++++++++++++++

# Release 2: Identify the Changes (WRITER)

# +++++++++++++++++++++++++++++++++++++++++++++++++++++


# ------------------------------------------------------
# What changed between the last release and this release?
# ------------------------------------------------------

# Nothing on the output was changed.  Only the coding was changed.



# ------------------------------------------------------
# What was replaced?
# ------------------------------------------------------

#   attr_reader :age

#   is replacing

#   #this code is no longer needed.
#   # def what_is_age
#   #   @age
#   # end

# ------------------------------------------------------
# Is this code simpler than the last?
# ------------------------------------------------------

# The code is simpler from a coder stand point but confusing at the first glance from a non-coder.
# Maybe a few more times it will start to come together.









# +++++++++++++++++++++++++++++++++++++++++++++++++++++

# Release 3: More Changes (ACCESSOR)

# +++++++++++++++++++++++++++++++++++++++++++++++++++++


# ------------------------------------------------------
# What changed between the last release and this release?
# ------------------------------------------------------

# Nothing on the output was changed from the last release.  Using “.change_my_age” or ".what_is_age" to update and view the age.  Now you can use “.age = [new age here]” or ".age" to change age and view age.

# ------------------------------------------------------
# What was replaced?
# ------------------------------------------------------

# This code was commented out.
#   # This code is no longer needed.
#   # def what_is_age
#   #   @age
#   # end

#   # This code is no longer needed
#   # def change_my_age=(new_age)
#   #   @age = new_age
#   # end

# This code has been added.
  # attr_reader :age
  # attr_writer :age

# ------------------------------------------------------
# Is this code simpler than the last?
# ------------------------------------------------------

# This is starting to make sence after seeing it for the 2nd time around.  But I do perfer the old way better because it’s broken down to English more where a normal human can understand if they are looking at the code.  If the code was private then having the attr would be better.








# +++++++++++++++++++++++++++++++++++++++++++++++++++++

# Release 4: Refactor

# +++++++++++++++++++++++++++++++++++++++++++++++++++++


# ------------------------------------------------------
# Refactor attr_ attributes
# ------------------------------------------------------
# class Profile
#   attr_accessor :age
#   attr_accessor :name
#   attr_accessor :occupation

#   def initialize
#     @age = 27
#     @name = "Kim"
#     @occupation = "Cartographer"
#   end

#   def print_info
#     puts
#     puts "age: #{@age}"
#     puts
#     puts "name: #{@name}"
#     puts
#     puts "occupation: #{@occupation}"
#     puts
#   end
# end






# +++++++++++++++++++++++++++++++++++++++++++++++++++++

# Release 5: Apply

# +++++++++++++++++++++++++++++++++++++++++++++++++++++
# # Psuedo Code:

# # Input:Input a name or a string
# # Output:"Hello [name here]! How wonderful to see you today."
# # Steps:
# Create a class to collect the name

# Create a 2nd class called Greetings that except 1 argument.
# Nest CLASS NameData inside of Greetings so we can re-use NameData

# Create a method that puts Hello to the new student accessing data from the newly created data.
# I will add driver code to explain the visual of how it came out.

# class NameData
#   attr_accessor :name
#   def initialize(your_name)
#     @name = your_name
#   end
# end

# class Greetings
#   attr_accessor :name_data
#   def initialize(name)
#     @name_data = NameData.new(name)
#   end
#   def hello
#     puts "Hello #{@name_data.name}! How wonderful to see you today."
#   end
# end

# #Driver code
# p aaron = NameData.new("Aaron")
# p aaron.name

# p byron = Greetings.new("Byron")
# p byron.hello

# #console returns
# #<NameData:0x00000001d49fd0 @name="Aaron">
# "Aaron"
# #<Greetings:0x00000001d49cd8 @name_data=#<NameData:0x00000001d49cb0 @name="Byron">>
# Hello Byron! How wonderful to see you today.







# +++++++++++++++++++++++++++++++++++++++++++++++++++++

# Release 6: Reflect

# +++++++++++++++++++++++++++++++++++++++++++++++++++++


# ------------------------------------------------------
# What is a reader method?
# ------------------------------------------------------

# Reader method or “attr_reader" return the current object.  This is more for scooping.

# ------------------------------------------------------
# What is a writer method?
# ------------------------------------------------------

# Writer method or “attr_writer” allows you to change the object.  For example if you are growing a tree or changing the age of someone .

# ------------------------------------------------------
# What do the attr methods do for you?
# ------------------------------------------------------

# attr methods helps you eliminate making a method for returning something or writing something or even both.

# ------------------------------------------------------
# Should you always use an accessor to cover your bases? Why or why not?
# ------------------------------------------------------

# Accessor wouldn’t be used all the time.  Because there are time where you are making a online app for a bank.  You wouldn’t want the user to make changes to the account number or name.  You’ll want to use reader instead of accessor.  So accessor should be used depending on the application you are building.

# ------------------------------------------------------
# What is confusing to you about these methods?
# ------------------------------------------------------

# After reading release 0 to 4 it really helps clear things out for me.  I would need to have more practice to on attr to get comfortable using attr_method.