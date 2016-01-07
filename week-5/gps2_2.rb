# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
#
#Because we are just taking a string of words, we don't need to add quantity to the list we can set the default of the hash to zero.
#Each item on the string is a list item defaulting to zero.
#
# set default quantity
# print the list to the console [can you use one of your other methods here?]
# output: Because of the things in the later challenge, a hash is needd.  But if we are just making a list then we could just make an array.
def create_list(input_string)
  list = Hash.new(0)
  separated_string = input_string.split(" ")
  separated_string.each do |item|
    list[item] += 0
  end
  return list
end
# Method to add an item to a list
# input: Take 3 arguments, name of list, items and quantity that we are going to add to the list.
# steps: With the name of the list(hash) we are putting items and quantity in the list.
# output: Output will be the name of the each list if we are using more than one list.  It will only output items and quantity.
def add_groceries(list, item, qty=0)
  list[item]= qty
  return list
end
# Method to remove an item from the list
# input: We will take 2 arugments and pass it through to remove item from the list.
# steps: Take the name of the list, and remove the item off the list.
# output: This will work if we have more than 1 list.  Using .delete we can remove an item off the list.
def remove_item(list, item)
  list.delete(item)
  return list
end
# Method to update the quantity of an item
# input: Taking 3 arguments and passing it through.
# steps: First take the name of the list and update the list and 2nd take the item and set it equal to the new quantity.
# output:
def update(list, item, qty=0)
  list[item]=qty
end
# Method to print a list and make it look pretty
# input: Taking the name of the list and breaking it down to item and quantity. And we use string interpolation to display each item and quanity
# steps:Take each item in the list and display it.
# output:Out put a sentence with each quanity and item.
def display(list)
  list.each {|item, qty| puts "Your list has #{qty} #{item}."}
end


groceries = create_list("carrots apples cereal pizza")
add_groceries("groceries", "lemonade", 2)
add_groceries("groceries", "tomatoes", 3)
add_groceries("groceries", "onions", 1)
add_groceries("groceries", "ice cream", 4)
remove_item("groceries", "lemonade")
update("groceries", "ice cream", 1)

What did you learn about pseudocode from working on this challenge?

pseudocode is extremely nessnaray for me.  I am more of a visual person so I need to see it before doing it.  It is easier to break down code in plain english.

What are the tradeoffs of using Arrays and Hashes for this challenge?

We needed to use a hash in this challenge because the Array is harder to read if we put quantity on it.  It could be done but much harder to pull out or filter through it if we need to go back and look for items that is more or less than something.
What does a method return?

The method doesn't return unless its specify in the method.

What kind of things can you pass into methods as arguments?

You can pass a list or quantity or both in your challenge.  We even passed the whole list in your challenge.

How can you pass information between methods?

We passed our list between our methods.

What concepts were solidified in this challenge, and what concepts are still confusing?

We first created a global list by using the "$list".  But our list could only be used within this file and our method can only be used in this whole script.  So we crated a method for the list and was able to pass it through all the methods so we can make multiply lists.