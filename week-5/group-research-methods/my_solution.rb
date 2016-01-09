# Research Methods

# I spent [] hours on this challenge.

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
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
