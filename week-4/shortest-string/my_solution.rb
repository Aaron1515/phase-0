# Shortest String

# I worked on this challenge [myself ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

def shortest_string(list_of_words)
    list_of_word = list_of_words.sort_by { |x| x.length }
    return list_of_word[0]
end
