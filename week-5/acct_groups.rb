# INPUT AND OUTPUTS
#
# input = An array of names
# output = groups_names : names
# My code will contain a HASH of all the groups and each group will house everone's name in an ARRAY.
#
# PSEUDO CODE:
#
# Create something that will put things in containers.  When it reach a max number of 5, put the name in another group.  If one group as a remainder of 1.  Then make every group of 4.
#
# is there more than 8 or more?
# put in a Group of 5
# is there 7?
# split group 4 and 3
# is there 6?
# split 3 and 3
# is there 5?
# put in 1 group
# is there 4?
# put in 1 group
# is there 3?
# put in 1 group




def fidder_crabs(names)

  # Create empty container for everyone in the group
  everybody = Hash.new
  # Create a counter for group number, defalt to 1
  counter = 1

  #names.shuffle!
  #I commented it out because we can choose to shuffle it or not.

  #while the list is longer than 8 people, put 5 each in a group.
  while names.length >= 8 do
    names_in_group = names[0..4]
    everybody[counter] = names_in_group
    counter +=1
    names = names.drop(5)
  end

  #if the remainder is 5, have the last group with 5 people
  if names.length == 5
    names_in_group = names[0..4]
    everybody[counter] = names_in_group
    counter += 1
    names = names.drop(5)

    #if the remaiinder group is 7, then we need to split the group into 4 and 3
  elsif names.length == 7
    names_in_group = names[0..3]
    everybody[counter] = names_in_group
    counter += 1
    names = names.drop(4)
    #creating the last group
    names_in_group = names[0..2]
    everybody[counter] = names_in_group
    counter += 1
    names = names.drop(3)

    #if the remainder is 6, we can have 2 groups of 3's
  elsif names.length == 6
    names_in_group = names[0..2]
    everybody[counter] = names_in_group
    counter += 1
    names = names.drop(3)
    #creating last group of 3
    names_in_group = names[0..2]
    everybody[counter] = names_in_group
    counter += 1
    names = names.drop(3)

    #if there is a remainder of 4 then create 1 group
  elsif names.length == 4
    names_in_group = names[0..3]
    everybody[counter] = names_in_group
    counter += 1
    names = names.drop(4)

    #if the remainder is 3, then create the last group with 3
  elsif names.length == 3
    names_in_group = names[0..2]
    everybody[counter] = names_in_group
    counter += 1
    names = names.drop(3)
  else
    names.length < 3
    names_in_group = names[0..1]
    everybody[counter] = names_in_group
    names = names.drop(3)
  end

  # since we filter by 8, the highest remainder is 7 and the lowest is 3, only 7 and 6 need to be split into 2 groups, while 3 and 4 could be in 1 group by themselfs.
  return everybody
  #Return the hash of everybody in their group number with their names.
end



# What was the most interesting and most difficult part of this challenge?

# The most challenging part was thinking of a way to not have 1 or 2 people left in a group.  What if there was a total of 21 people.  They both have a remainder of 1.  If the max group was 4 and 5.  How would that split up.  Having it work in my head wasn't easy to translate into coding.  I ran into a long thinking process on how to translate that to code.
# The second issues I ran into was having to use an Array inside the method.
# Third was me using as little build in method as possible.  The only build in method I used was ".length" and ".drop".  Everything is breaking down the math of how to control the remainder of students.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

# I had to do a major pseduocoding to work through this problem.

# Was your approach for automating this task a good solution? What could have made it even better?

# I could of done a lot more refactoring to get this code  better.  Or found a eaiser way to do it.  However the my code will not remove people off the final list.

# What data structure did you decide to store the accountability groups in and why?

# I debated on putting everyone on a seprate array and having 5 different arrays.  But I decided to put a key value pair on a hash.  So I have to create a counter to number the key and used an array as the value pair.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# Yes, I learned how to put an array inside of the hash.  Mostly I learned how to take things out of an array or hash.  This time around its the reverse of that.  Which made it pretty hard.

# Release 3: Add complexity (OPTIONAL)


# If you run this program three times in a row, will the program give you three different outputs?

# It will not give you different results unless you change the order of inputs.

#I commented out the .shuffle part, just in case if someone wants to mix it up and shuffle the names in the groups.

# Should the program store past outputs?

# The code will not store any pass outputs.  You can call the method with puts to store if you like.  We can create a Class with this method and store the past outputs.

# If one person were to leave the cohort, how would the accountability groups change?

# If someone leaves the group, it will not change anything.  My code is not complex enough to excute that.

# How do you decide when you're done? You'll need to decide. This is much more challenging than you probably think, especially since there are no pre-written tests.

#   I know I can imporve on this code with creating more method to take out redunceny but I think I spent enough time on this and not jump into a rabbit hole.