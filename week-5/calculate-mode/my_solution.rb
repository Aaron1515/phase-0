# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? array = [1,2,4,5,3,2,5,3,3,3]
# What is the output? mode = [3]
# What are the steps needed to solve the problem?


# 1. Initial Solution




# 3. Refactored Solution




# 4. Reflection


array = [1,2,4,5,3,2,5,3,3,3]

def mode(ray)
  hash_brown = {}
  ray.each do |each_num|
    hash_brown[each_num] += 1
  end
  puts hash_brown
end


mode(array)