# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with:Sanderfer Chau
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input:16 digit numbers, errors, 0, 17 digits numbers, not valid numbers
# Output: Arugment errors, true, false
# Steps:



# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# Create a method that initialize the class of credit card
# create an attribute for credit card that will be pass between methods, not sure what it is yet but we’ll find something
# Create argument error if  credit card isn’t 16 char, if it is then let it run, run baby run!
# In order to use the method .lenght we need to convert the input to a string.

# Create a method that will check if the credit card if it is valid.
# create an empty container (called cc_array1)  to put the 16 digits in after the odd numbers been doubled.

# take odd number in the string and put it in the empty array(cc_array1) then put the rest of the even numbers in the array.  While doing this change the strings into integers.

# create a empty container [with all the numbers integer form] with the total of cc_array and converting it into integers

# Convert the new Array into string. to keep double digit number intact.

# Now split the array up again to separate the double digit numbers.

# Convert the Array of numbers from Strings to Integers again

# Add the total numbers up and put it in 1 container



# Credit a method to check if the credit card is legit?
# Heck yea!.



# class CreditCard

#   attr_accessor :sum
#   attr_reader :cc
#   def initialize(credit_card_number)
#     raise ArgumentError.new('Invalid Credit Card number') unless credit_card_number.to_s.length == 16
#     @cc = credit_card_number
#   end

#   def check_card
#     cc_array1 = []
#     cc_total = []
#     s = cc.to_s.split(//)
#     zero = s[0].to_i * 2
#     one = s[2].to_i * 2
#     two = s[4].to_i * 2
#     three = s[6].to_i * 2
#     four = s[8].to_i * 2
#     five = s[10].to_i * 2
#     six = s[12].to_i * 2
#     seven = s[14].to_i * 2


#     cc_array1 << zero
#     cc_array1 << one
#     cc_array1 << two
#     cc_array1 << three
#     cc_array1 << four
#     cc_array1 << five
#     cc_array1 << six
#     cc_array1 << seven


#     cc_array1 << s[1].to_i
#     cc_array1 << s[3].to_i
#     cc_array1 << s[5].to_i
#     cc_array1 << s[7].to_i
#     cc_array1 << s[9].to_i
#     cc_array1 << s[11].to_i
#     cc_array1 << s[13].to_i
#     cc_array1 << s[15].to_i

#     cc_array2 = cc_array1.join.to_i

#     @sum = 0
#     cc_array2.to_s.split(//).each do |x|
#       @sum += x.to_i
#     end
#     is_it_legit?
#   end


#   def is_it_legit?
#     sum % 10 == 0
#   end

# end



# Refactored Solution

class CreditCard

  attr_accessor :sum
  attr_reader :cc

  def initialize(credit_card_number)
    raise ArgumentError.new('Invalid Credit Card number') unless credit_card_number.to_s.length == 16
    @cc = credit_card_number.to_s.split(//)
  end

  def check_card
    total_string_array = []
    cc.each_with_index do |number, index|
      if index %  2 != 0 ? total_string_array << number.to_i : total_string_array << number.to_i * 2
      end
    end

    total_integer_array = total_string_array.join

    @sum = 0
    total_integer_array.to_s.split(//).each { |x| @sum += x.to_i}

    is_it_legit?
  end

  def is_it_legit?
    sum % 10 == 0
  end
end

#Driver Code
# a = 4408041234567901
# p visa = CreditCard.new(a)
# p visa.check_card

# b = 5408041234567901
# p master_card = CreditCard.new(b)
# p master_card.check_card

# Reflection


# What was the most difficult part of this challenge for you and your pair?

# It was very time consuming when we iterating everything manually by calling each index one by one.

# Writing pseudo code for this was pretty intense because we kept converting it from string to fixnum and fixnum to string then string to fixnum again.

# What new methods did you find to help you when you refactored?

# We used .each_with_index to help refactored our manual iterating.

# What concepts or learnings were you able to solidify in this challenge?

# We practically did everything manually and the longest way possible in the world.  But when we were doing the refactoring we are able to cut things down to fewer lines.  Maybe doing it the hard and long way was the best way and don't worry about having things in fewer lines till we are doing refactoring.