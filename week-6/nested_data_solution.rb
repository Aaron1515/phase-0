# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0] #final answer
p array[-1][-1][-1][0] #2nd way

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# p hash[:outer]
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]
p nested_data[:array][-1][:hash] #2nd version


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]


number_array = [5, [10, 15], [20,25,30], 35]

number_array = number_array.collect do |outer_array|
  if outer_array.kind_of?(Array)
    outer_array.collect {|inner_array| inner_array += 5 }
  else
    outer_array += 5
  end
end
#driver code
p number_array



#This is an destructrive method.  We are setting new value to "number_array" by setting the "=" sign to it.
#We can remove the "number_array = " or call a new variable to be something else."

# Bonus:


startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

a = startup_names.map do |bit|
  if bit.kind_of?(Array)#bit
    bit.map do |find|
      if find.kind_of?(Array)
        find.map do |opti|
          opti + 'ly'
        end#end do block for opti
      else
        find + 'ly'
      end#end if statement for opti
    end #end find do
  else#bit
    bit + 'ly'#bit
  end#end if block
end#ends bit do



#Driver code

# p startup_names


# => ["bitly", ["findly", "fastly", ["optimizely", "scopely"]]]


# What are some general rules you can apply to nested arrays?

#   Index are very important.  They are throw you off if they have other things nested inside of an array and remember to use key to get the value on hashes.

# What are some ways you can iterate over nested arrays?

#   using .kind_of? helped a lot on this challenge.  and using the .map and .each works really well.

# Did you find any good new methods to implement or did you re-use one you were already
# familiar with? What was it and why did you decide that was a good option?

#   I reused the method .map to iterate over the nested arrays.  .map changes the array so I decided to use .map