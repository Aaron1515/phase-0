# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: Sanderfer].
# I spent [.5] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
# Create a PezDispenser
# Input = nada
# Output = flavors, how many are left on the pez, where's the favor flavor is located.

# Create a CLASS  called "PezDispenser"

# Create a METHOD within CLASS to display "pez_count" to count the amount of pez left in the container.
# Create a METHOD with in the CLASS to see all the pez in the dispencer.
# Create a METHOD called get_pez to remove the top pez.

# Initial Solution

class PezDispenser
  attr_accessor :pez
  def initialize(flavors)
    @pez = flavors
  end
  def see_all_pez
    @pez
  end
  def add_pez(add_more)
    @pez.unshift(add_more)
  end
  def pez_count
    @pez.length
  end
  def get_pez
    @pez.shift
  end
end



# Refactored Solution
class PezDispenser
  def initialize(flavors)
    @pez = flavors
  end
  def see_all_pez
    @pez
  end
  def add_pez(add_more)
    @pez.unshift(add_more)
  end
  def pez_count
    @pez.length
  end
  def get_pez
    @pez.shift
  end
end





# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection

# What concepts did you review in this challenge?

# I was able to make the code from the user input from the bottom.  It was pretty much layed out which methods we needed to make.

# What is still confusing to you about Ruby?

# Working with Classes confused me a bit but I was able to get more practice in with Classes so I was able to get a little more confident with Classes.

# What are you going to study to get more prepared for Phase 1?

# I'll review more classes and methods.  Also I wanted to go over build in methods in rubydocs which will help my puesdocodeing better.