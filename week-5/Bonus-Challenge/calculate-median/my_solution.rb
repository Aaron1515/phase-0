# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [myself ].

# 0. Pseudocode
# How many objects is in the array?
# Sort the array with a BANG!
# IF it is a odd numbers of object.
#   Divide the array in half and add 1
#   The number we get is the index of the median of that array.
#   IF it is an odd number of object in the array.
#   We can assume we will be working with numbers.
#   To get the 2 numbers in the middle.
#   We divide the array by half for the first number.
#   To get the 2nd number we divide the numbers in the array by half and add 1 to it.
#   Now that we have both numbers
#   Add both those numbers and divide it by half and convert it to a float.






# What is the input? An array of objects
# What is the output? The median of the highest and lowers of each , answer must be within the array.
# # What are the steps needed to solve the problem?
# If it is an odd number of objects, then take the total number of items and divide it by half.  And the index is that number plus 1.  But since in computer language the starting count is 0 then that means we don't have to do the plus 1.

# Second condition is assuming it will be numbers.  We do the same thing, we need to get 2 index.  The way I used was to divide it by half and normally add 1 to the index.  But since the computer starts it count at 0.  We will need to subtract 1 ratter than adding 1.  After getting those 2 numbers, we add them up and divide it by 2.0.  We are using a float because most likely will be a float as the answer.  That is how we get the answer for even and odd numbers in the median.


# 1. Initial Solution

def median (an_array)
  an_array.sort!
  nums = an_array.length

  if nums % 2 != 0
    return an_array[nums / 2]
  else
  return (an_array[nums/2]+an_array[(nums/2)-1])/2.0
  end
end


# 3. Refactored Solution



# 4. Reflection
#This is a very tough way to find the correct syntax.  There is a quite a bit of math done here to find the correct answer.  When there's a mix of integer and strings.  You'll just have to assume that there is an odd number of strings to make this work.