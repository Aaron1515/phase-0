
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
#   attr_reader :age

#   is replacing

#   #this code is no longer needed.
#   # def what_is_age
#   #   @age
#   # end

# The "attr_reader :age" is the same has writing the long drawn out way to make the method.  Its just a refactoring of the method.

# ------------------------------------------------------
# How are they modifying or returning the value of instance variables?
# ------------------------------------------------------
# Another way of writing the following
# "attr_reader :age"

# is the same as

# def age
#   @age
# end

# .age will return the age so .what_is_name isn't going to be used any longer







# +++++++++++++++++++++++++++++++++++++++++++++++++++++

# Release 2: Identify the Changes (WRITER)

# +++++++++++++++++++++++++++++++++++++++++++++++++++++


# ------------------------------------------------------
# What changed between the last release and this release?
# ------------------------------------------------------

# This code was commented out.
#   # This code is no longer needed
#   # def change_my_age=(new_age)
#   #   @age = new_age
#   # end

# This code has been added.
#   attr_writer :age

# Indeed of using “.change_my_age” to update the age, you will need to update age by using “.age = [new age here]” instead.

# ------------------------------------------------------
# What was replaced?
# ------------------------------------------------------

# This code was commented out.
#   # This code is no longer needed
#   # def change_my_age=(new_age)
#   #   @age = new_age
#   # end

# This code is the replacement.
#   attr_writer :age

# ------------------------------------------------------
# Is this code simpler than the last?
# ------------------------------------------------------

# This is starting to make sense after seeing it for the 2nd time around.  But I do perfer the old way better because it’s broken down to English more where a normal human can understand if they are looking at the code.  If the code was private then having the attr would be better.






# +++++++++++++++++++++++++++++++++++++++++++++++++++++

# Release 3: More Changes (ACCESSOR)

# +++++++++++++++++++++++++++++++++++++++++++++++++++++


# ------------------------------------------------------
# What changed between the last release and this release?
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
#   attr_accessor :age

# Indeed of using “.change_my_age” or ".what_is_age" to update and view the age.  Now you can use “.age = [new age here]” or ".age" to change age and view age.

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

# This code is the replacement.
#   attr_accessor :age

# ------------------------------------------------------
# Is this code simpler than the last?
# ------------------------------------------------------

# This is starting to make sense after seeing it for the 3nd time around.  But I do perfer the old way better because it’s broken down to English more where a normal human can understand if they are looking at the code.  If the code was private then having the attr would be better.








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