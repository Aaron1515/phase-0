# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

  #Create an ARRAY that contain "b", "i", "n", "g", "o"
  #Create an ARRAY of ranges.

  #Create a method that will generate a letter and number.


# Check the called column for the number called.
  #fill in the outline here

  #Create a method that check by colum b, i, n, g, o
  #Create a method that will check that column for the random generated number.

# If the number is in the column, replace with an 'x'
  #fill in the outline here

  #Create a method that could replaced X with number found.

# Display a column to the console
  #fill in the outline here

  #Create a method called SHOW_BOARD to display the current board.

# Display the board to the console (prettily)
  #fill in the outline here
  # Display the best freaking looking board.

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end


end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection


