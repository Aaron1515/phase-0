# Review and Refactor: Pad an Array

# I worked on this challenge [Myself ].



# First Person's solution I liked
#    What I learned from this solution
# Copy solution here:


# def pad!(array, min_size, value = nil) #destructive
#   if min_size <= array.length
#     return array
#   else
#     difference = min_size - array.length
#     counter = 0
#     while counter < difference
#       array << value
#       counter += 1
#     end
#   end
#     return array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_arr = []
#   new_arr.concat(array)
#   if min_size <= new_arr.length
#     return new_arr
#   else
#     difference = min_size - array.length
#     counter = 0
#     while counter < difference
#       new_arr << value
#       counter += 1
#     end
#   end
#   return new_arr
# end

# Second Person's solution I liked
#    What I learned from this solution
# Copy solution here:

# def pad!(array, min_size, value = nil) #destructive
#  if array.length >= min_size
#     return array
#   else
#    pad_size = min_size - array.length
#    for i in 1..pad_size
#     array.push(value)
#     end
#     return array
#   end
# end

# def pad(array, min_size, value = nil)
#   new_array = array.clone
#   if array.length >= min_size
#     return new_array
#   else
#     pad_size = min_size - array.length
#     for i in 1..pad_size
#     new_array.push(value)
#     end
#     return new_array
#   end
# end


# My original solution:

# def pad!(array, min_num, value = nil)#destructive
#     padding = min_num - array.length
#     return array if padding < 0
#     array.concat(Array.new(padding, value))
# end

# def pad(array, min_num, value = nil)#non-destructive
#   pad!(array.clone, min_num, value)
# end

# My refactored solution:
def pad!(array, min_num, value = nil)#destructive
    padding = min_num - array.length
    return array if padding < 0
    array.concat(Array.new(padding, value))
end

def pad(array, min_num, value = nil)#non-destructive
  pad!(array.clone, min_num, value)
end



# 5. Reflection
# There wasn't much I could find that break it down less than what we already made it to.  We refactored the codes down pretty slim already.  We both had some great codes we used to refactored and did a bit of research on refactoring it down already.