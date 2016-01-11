# Research Methods

# I spent [4] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select do |word|
    word.respond_to?('include?') && word.include?(thing_to_find)
  end
end

def my_hash_finding_method(source, thing_to_find)
  new_array = []
  source.select do |key, value|
    if
    value == thing_to_find
      new_array << key
    end
  end
  new_array
end


# Identify and describe the Ruby method(s) you implemented.
# My non refactoring :

# def my_array_finding_method(source, thing_to_find)
  # source.each
  # do |word|
  #   if word.respond_to?(:include?)
  #     if word.include?(thing_to_find)
  #       new_array << word
      # end
  #   end
  # end
  # new_array
# end
#
#On my first challenge it didn't respond to fixnum, which give me the biggest challenge ever.  I found a way to make sure if will respond to .include by using a statement that it would respond to .include then passed it with the .include.

# Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end
def my_array_modification_method!(source, thing_to_modify)
    source.each_index do |index|
        source[index] += thing_to_modify if source[index].is_a? Integer
    end
end

def my_hash_modification_method!(source, thing_to_modify)
    source.each_pair do |key, value|
        source[key] = value + thing_to_modify
    end
end
# Identify and describe the Ruby method(s) you implemented.
#
## M1. I implemented an Array Class build-in method #each_index. it works similar to #each except it passes the index of the element instead of the element itself. This method return an array.
# M2. I implemented a Hash Class build-in method #each_pair. This method calls the block for each key in the hash object (which is the source here), then passing the key-value as parameters into the block. After the work is done, this method return a hash.
#
#


# Person 3
def my_array_sorting_method(source)
  source.sort {|a,b| a.to_s <=> b.to_s }
end

def my_hash_sorting_method(source)
   source.sort_by {|key, value| value}
end

# Identify and describe the Ruby method(s) you implemented.
=begin
1. Identify and describe the Ruby method(s) you implemented
I used the enumerable sort and sort_by method.
2. Teach your accountability group how to use the methods
Sort:
To define a method that sorts an array without modifying the existing data, I used the enumerable method called sort...no suprises here! This method sorts the items by comparing themselves to eachother using with the <=> operator or logic supplied in a code block. Since the array i_want_pets contains strings and integers, the items cannot be compared directly with eachother using the <=> operator. I used a code block that converted the array items to strings then compared themselves to eachother. After all the items are sorted, this order is then applied to the original array. The returned array is a new object. The original array will not get permanently modified unless sort! (with a bang) is used.
Sort_by:
To define a method that sorts a hash, I used the enumerable method, sort_by. The sort_by method only requires one paramenter so I chose to sort by the hash value. The sort_by method returns a new array.
3. Share any tricks you used to find and decipher the Ruby Docs
No real tricks besides make sure you are looking at the right Ruby Doc version! I also skim the methods available for each class and write down ones that could be helpful for solving each problem.
=end


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.each do |x|
    if x.is_a? Integer
    elsif x.include?(thing_to_delete)
      source.delete(x)
    end
  end
  source
end


def my_hash_deletion_method!(source, thing_to_delete)
  #Delete thing_to_delete if it mactch that.
  source.delete_if {|name, kids|name == thing_to_delete}
end

# Identify and describe the Ruby method(s) you implemented.
#
# On the array, added a condition to filter out integer then moved on to the next part which is if it include thing to delete, then it will delete that word out of the source.  By modifying the source its a destructive delete.  At the end I returned the source.
#
#The hash was much easier because I didn't have to use .include.  I used a new method called .delete_if to delete something if it matches thing to delete exactly the same.


# Person 5
# def my_array_splitting_method(source)

  #Each number in b,
  nums = Array.new
  strings = Array.new

  source.each do |item|
  #If it is a number puts it in the first array,
    if item.is_a? Integer
      nums << item
  #if it is a string put it in the 2nd array
    elsif item.is_a? String
      strings << item
  #then combine he 2 array and nest it inside of 1 array.
    end
  end
  [nums] + [strings]
end

# Refactoring:

# def a(b)
#   nums = b.select{ |item| item.is_a? Integer }
#   strs = b.select{ |item| item.is_a? String }
#   [nums, strs]
# end


def my_hash_splitting_method(source, age)
  groups = [[],[]]
  #ask the kid their name and age
  source.each do |key, value|
  #then if they are under the age requirement, put them in a corner
    if value <= age
      groups[0] << [key, value]
  # the rest of the kids put them in another corner
    else
      groups[1] << [key, value]
  # then put call the first group , group 1,
  #   then call the 2nd group , group 2
    end
  #     then combine them to gether.

  end
  groups
end

# Identify and describe the Ruby method(s) you implemented.
#Only build in method I used was .each on both challenges.  I want to keep it simple.  I commentd all my lines of codes to describe what I was doing on each one.  It is my pseudo code while creating the challenge.
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#  I used a few new built in methods.
# .delete_if
# .delete
# .is_a? Integer
# .is_a? String
# .respond_to
# I used delete if when I was doing the deleting something from the hash if it matches.
# .delete is the same but it doesn't have a condition.
# .is_a? is a great tool that can be used for so much things. Because you can check if its a Integer, String, Array, etc.  It goes well with a condition.
# Last is resond_to.  In order for me to no break the code is have a condition to make sure it can resond to .include on an Array that contain numbers.  Because You can't use .include on a Fixnum.
# #
# #


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# With a lot of outside researching I was able to find more syntax I can use in my back pocket.  I do need more help on explaining my codes.  I learned that I'm not great at explaining myself but I'm also trying. So I started to code within my pseudocodes.  That why I can explain each step I used and did.
#
#
#
