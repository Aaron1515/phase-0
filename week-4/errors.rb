# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# error.rb file has the error.
# 2. What is the line number where the error occurs?
# Line 170 has an error.
# 3. What is the type of error message?
# It's a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# It says "unexpected end-of-input, expecting keyword_end"
# 5. Where is the error in the code?
# The error points the the end of the ruby file.
# 6. Why did the interpreter give you this error?
# The method is missing an end of the method.  There is an end to [while], and no end to [def].

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# Line 35 is where the error is.
# 2. What is the type of error message?
# The error message is "in `<main>':NoMethodError".
# 3. What additional information does the interpreter provide about this type of error?
# Additional info for the code is "undefined local variable or method `south_park' for main:Object"
# 4. Where is the error in the code?
# The error is the object known as "south_park".
# 5. Why did the interpreter give you this error?
# south_park is undefined variable, method, object.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# Line 50 has the error.
# 2. What is the type of error message?
# Same as the previous one, "in `<main>':NoMethodError" is the error message.
# 3. What additional information does the interpreter provide about this type of error?
# undefined method `cartman' for main:Object (NoMethodError) is the additional information.
# 4. Where is the error in the code?
# The error is cartmen() was setup to be an method with parameters or it was suppose to be using cartman from a method but has no arguement.
# 5. Why did the interpreter give you this error?
# There could be 2 possibility Ruby dones't know if "cartman()" is an method or it could be trying to use an method with our any arguments.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# Error is on line 69. ('I hate Kyle') is not needed in the method.
# 2. What is the type of error message?
# Error message is in `cartmans_phrase:ArgumentError'.
# 3. What additional information does the interpreter provide about this type of error?
# Additional information is "wrong number of arguments (1 for 0) (ArgumentError)" and "from errors.rb:69:in `<main>'"
# 4. Where is the error in the code?
# Line 69 is calling the method with an agrument. Mainly because ('I hate Kyle') is not needed if you are just tying to call the method.
# 5. Why did the interpreter give you this error?
# It gave the error because line 69 has an argument, which isn't needed because the method doesn't have a parameter.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# Line 88 has the error.
# 2. What is the type of error message?
# "in `cartman_says': ArgumentError" is the error.
# 3. What additional information does the interpreter provide about this type of error?
# Additional information is "wrong number of arguments (0 for 1) (ArgumentError)".
# 4. Where is the error in the code?
# The error is in line 88.  cartman_say is missing an argument.
# 5. Why did the interpreter give you this error?
# Because cartman_says has no argument.  The method needs an argument to run the method.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# Error occured on line 109.
# 2. What is the type of error message?
# "in `cartmans_lie': ArgumentError"
# 3. What additional information does the interpreter provide about this type of error?
# "wrong number of arguments (1 for 2)""
# 4. Where is the error in the code?
# The error is in "cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')""
# 5. Why did the interpreter give you this error?
# The method has two parameters.  When it was called on line 109, there was only one argument instead of two.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# Line 124 has the error.
# 2. What is the type of error message?
# Error message is "in `*':TypeError".
# 3. What additional information does the interpreter provide about this type of error?
# Additional information is "String can't be coerced into Fixnum".
# 4. Where is the error in the code?
# "Respect my authoritay!" is where the error is.
# 5. Why did the interpreter give you this error?
# It gave an error because you can't multiply a number with a string.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# Line 139
# 2. What is the type of error message?
# Error message is "n `/':ZeroDivisionError".
# 3. What additional information does the interpreter provide about this type of error?
#  divided by 0
# 4. Where is the error in the code?
# The error is 0.
# 5. Why did the interpreter give you this error?
# You can't divide 20/0, so it gave an error.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Error is on line 155.
# 2. What is the type of error message?
# "n `require_relative': LoadError"
# 3. What additional information does the interpreter provide about this type of error?
# The additional information is "cannot load such file -- /Users/Aaron/DBC-Stuff/phase-0/week-4/cartmans_essay.md".
# 4. Where is the error in the code?
# The error "/Users/Aaron/DBC-Stuff/phase-0/week-4/cartmans_essay.md"  No known file exist.
# 5. Why did the interpreter give you this error?
# There was no such file named "cartmans_essay.md" in the current working directory.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read?
# Most of these are pretty straight forword.  As long as you read the example of how to figure out what the error was.  It's pretty easy.
# How did you figure out what the issue with the error was?
#   By reading the errors, I was able to figure out the issue with ruby file.
# Were you able to determine why each error message happened based on the code?
#   I was able to determine why each one had an error pretty quickly.  It always show an error where the issue is and where it's from.
# When you encounter errors in your future code, what process will you follow to help you debug?
#   I would just read the error message and handle it where the issues originated from and to where the error is from.