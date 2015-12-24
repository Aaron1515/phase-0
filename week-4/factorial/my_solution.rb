# Factorial

# I worked on this challenge [Jonathan Silvestri].


# Your Solution Below
def factorial(number)
  i = number
  total = number
  if number == 0 || number == 1
    return 1
  else
    while i > 1
      total=total * (i - 1)
      i -= 1
    end
  end
  return total
end

# Your Solution Below

# INPUT: A number
# OUTPUT: The factorial of that number

# Steps to Solve
# Write a method to calculate the factorial of INPUT.
# Include two new variables and set them equal to INPUT.
#   IF INPUT is equal to either 0 or 1,
#     RETURN 1.
#   ELSE
#     Begin a loop that will determine the factorial of the number.
#     WHILE the iterator is greater than one
#       Multiply the iterator by (itself - 1)
#       reduce the iterator by 1.
#     Repeat until we reach 1.
#     END
#   END
#   RETURN the total factorial.
# END