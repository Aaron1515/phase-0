# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? pad([1,2,3], 5)
# What is the output? [1,2,3,nil,nil]
# What are the steps needed to solve the problem?
# See if the minimum number is smaller than the array.
# If it is smaller, start a series of conditions now
# What  is the length different from the array to the minimum number?
# Once we get that number, Start a loop to add the word in the array.
# WHILE the different minimum is not zero, add one word to the array
# After adding one word to the array, subtract 1 from the different till it reaches 0
# Now DISPLAY the array on the screen.
# If the array is larger then the length of minimum number
# Just DISPLAY the array.


# For the non destructive way to do it.  I started with
# Cloning the array so we don’t make any changes to the original array, then we call the new Array, new_array


# 1. Initial Solution
def pad!(array, min_num, value = nil) #destructive
    if array.length < min_num
      padding = min_num - array.length
      while padding > 0
        array << value
        padding = padding -= 1
      end
      return array
    else
      return array
    end
end

def pad(array, min_num, value = nil) #non-destructive
    new_array = array.map{|clone| clone}
    if new_array.length < min_num
      padding = min_num - new_array.length
      while padding > 0
        new_array << value
        padding = padding -= 1
      end
       return new_array
    else
       return new_array
    end
end




# 3. Refactored Solution
# def pad!(array, min_num, value = nil)#destructive
#     padding = min_num - array.length
#     return array if padding < 0
#     array.concat(Array.new(padding, value))
# end

# def pad(array, min_num, value = nil)#non-destructive
#   pad!(array.clone, min_num, value)
# end


# 4. Reflection

#
# Were you successful in breaking the problem down into small steps?
# It was easy to break the code down by using pseudocode.
#
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#
# It was easy to break it down to code once I have started.  I had a issues find the right syntax to match up what I was translating from pseudocode to actual code.  I hard a hard time doing so.
#
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#
# My initial code was to do everything I was doing in my pseudocode but I ran into syntax issues and some won't pass because of it.  I had to change my code because I can find the syntax for it.  As I do more and more coding I think I'll be able to find the correct syntax and type in the correct syntax to match my brain.
#
# When you refactored, did you find any existing methods in Ruby to clean up your code?
#
# Yes, I have to use a lot more outside research for it.  I used .clone to do my 2nd part of pad.  I also used .concat to added into an array as well.  Those are both really new to me.  I understand it enough to use it once and remember there's such codes out there.
# # How readable is your solution? Did you and your pair choose descriptive variable names?
#
# Yes, we had some wording difference but we both came up with a good solution to that.  But sticking with what we what in those variable was quite easy, because it's just plain English.
#
# # What is the difference between destructive and non-destructive methods in your own words?
#
# Distructive is much easier to use because then we don't have to clone anything.  But since the code was written for destructive and cloning it make it much easier.  It was good how we did the distructive first then did the non-destructive second.  Because it was a good use of cloning.