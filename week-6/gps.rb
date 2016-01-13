# Your Names
# 1)Aaron Hu
# 2)Byron Gage

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_people)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  unless menu.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = menu[item_to_make]
  remaining_hungry_people = num_of_people % serving_size

  if remaining_hungry_people == 0
    return "Calculations complete: Make #{num_of_people / serving_size} of #{item_to_make}"
  elsif remaining_hungry_people < 5
    return "Calculations complete: Make #{num_of_people / serving_size} of #{item_to_make}, you have #{remaining_hungry_people} hungry people. Lets make more cookies."
  else
    if remaining_hungry_people-5 == 0
      return "Calculations complete: Make #{num_of_people / serving_size} of #{item_to_make}, you have #{remaining_hungry_people} hungry people. Lets make a cake."
    else
      return "Calculations complete: Make #{num_of_people / serving_size} of #{item_to_make}, you have #{remaining_hungry_people} hungry people. Lets make a cookie and a cake."
    end
  end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

=begin

What did you learn about making code readable by working on this challenge?

The naming of variable is very important and what it represent.  Naming it something else can confuse the coder when you look back at it at a later time.
Also if someone was to use your code without looking at the code they will only assume what is written in english or what those starting variable are used for.

Did you learn any new methods? What did you learn about them?

.has_key? is one that I learned today.  It works the same way as .include? but it targets the key on the Hash instead of .include? mainly used well in an Array.

What did you learn about accessing data in hashes?

I learned the new method used “.has_key?”.  There’s much more build-in method in ruby that I still don’t know yet but as we move along this course I’m sure to learn more and more.

What concepts were solidified when working through this challenge?

After doing this gps.  Working on someone else bad code is not fun because understanding a code that is badly written with bad naming variables is confusing.  If I were to break down a code that is 1000 lines long it will be me pounding my head on the wall asking “why? do this” and “why do that?”.

But its all from a learning curve.  These things will come up and learning how to deal with it is part of being a developer.


end