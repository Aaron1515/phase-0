# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [5] hours on this challenge. 6 Hours doing the final touches.


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

# bingo_board = [[47, 44, 71, 8, 88],
#                [22, 69, 75, 65, 73],
#                [83, 85, 97, 89, 57],
#                [25, 31, 96, 68, 51],
#                [75, 70, 54, 80, 83]]

# class BingoBoard

# #crate method for everything being passing around
#   attr_accessor :b
#   attr_accessor :i
#   attr_accessor :n
#   attr_accessor :g
#   attr_accessor :o
#   attr_reader :board
#   attr_accessor :current_players_board
#   attr_reader :letter
#   attr_reader :number

# def initialize(board)
#     raise ArgumentError.new ('We need a legit board, not the Craigelist\'s Version.') unless board.flatten.length == 25

#     @current_players_board = board
#     @board = board

#     @b = current_players_board[0][0],current_players_board[1][0],current_players_board[2][0],current_players_board[3][0],current_players_board[4][0]
#     @i = current_players_board[0][1],current_players_board[1][1],current_players_board[2][1],current_players_board[3][1],current_players_board[4][1]
#     @n = current_players_board[0][2],current_players_board[1][2],current_players_board[2][2],current_players_board[3][2],current_players_board[4][2]
#     @g = current_players_board[0][3],current_players_board[1][3],current_players_board[2][3],current_players_board[3][3],current_players_board[4][3]
#     @o = current_players_board[0][4],current_players_board[1][4],current_players_board[2][4],current_players_board[3][4],current_players_board[4][4]
#   end


# def call

#   @letter = ["B","I","N","G","O"].sample
#   @number = rand(1..100)
#   puts
#   puts "Our number is #{letter}#{number}"
#   if
#     @letter == "B"
#       @b = @b.map do |something|
#         if something == @number
#           something = "X"
#         else
#           something
#         end
#       end

#   elsif
#     @letter == "I"
#       @i = @i.map do |something|
#         if something == @number
#           something = "X"
#         else
#           something
#         end
#       end

#   elsif
#     @letter == "N"
#       @n = @n.map do |something|
#         if something == @number
#           something = "X"
#         else
#           something
#         end
#       end

#   elsif
#     @letter == "G"
#       @g = @g.map do |something|
#         if something == @number
#           something = "X"
#         else
#           something
#         end
#       end
#   elsif
#     @letter == "O"
#       @o = @o.map do |something|
#         if something == @number
#           something = "X"
#         else
#           something
#         end
#       end
#     end
#     print "Your resuld after the draw"
#     puts
#     puts check
#   end

#   def check
#     print b
#     puts
#     print i
#     puts
#     print n
#     puts
#     print g
#     puts
#     print o
#   end

# end

# # driver codes.
# new_game = BingoBoard.new(bingo_board)

# new_game.call
# new_game.call
# new_game.call
# new_game.call
# new_game.call
# new_game.call
# new_game.check


# Refactored Solution

bingo_board = [[47, 44, 71, 8, 88],
               [22, 69, 75, 65, 73],
               [83, 85, 97, 89, 57],
               [25, 31, 96, 68, 51],
               [75, 70, 54, 80, 83]]

class BingoBoard

  attr_reader :letter
  attr_reader :number

def initialize(board)
    raise ArgumentError.new ('We need a legit board, not the Craigelist\'s Version.') unless board.flatten.length == 25


    @board = board
    @b = []
    @i = []
    @n = []
    @g = []
    @o = []
    board.map do |x|
      @b << x[0]
      @i << x[1]
      @n << x[2]
      @g << x[3]
      @o << x[4]
    end
end


def call
  @letter = ["B","I","N","G","O"].sample
  @number = rand(1..100)
  puts
  puts "Our number is #{letter}#{number}"
  case @letter
    when "B"
    @b = @b.map do |something|
     something == @number ? something = "X" : something
    end
    when "I"
    @i = @i.map do |something|
     something == @number ? something = "X" : something
    end
    when "N"
    @n = @n.map do |something|
      something == @number ? something = "X" : something
    end
    when "G"
    @g = @g.map do |something|
      something == @number ? something = "X" : something
    end
    when "O"
    @o.map do |something|
     something == @number ? something = "X" : something
    end
  end
end

def check
  print @b
  puts
  puts "--------------------"
  print @i
  puts
  puts "--------------------"
  print @n
  puts
  puts "--------------------"
  print @g
  puts
  puts "--------------------"
  print @o
  puts
end

end

# driver codes.
# new_game = BingoBoard.new(bingo_board)

# new_game.check


# Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

# Pseudo coding his challenge was very hard for me.  I didn’t know where to begin.  This was the first time I got lost.  I started to take things one step at a time till I got it down.  My pseudo coding was all over the place.  I wanted to make a method for this and another for that.  It was going bananas.  I have to get better to pseudo coding.

# What are the benefits of using a class for this challenge?

# Using class in this challenges helps me understand why we use class methods.  Like if a 2nd players joins the game, they can have a second set of boards or 3rd or 4th and so on.

# How can you access coordinates in a nested array?

# Access nested array was half the fun of this challenge.  It was much more difficult on the last challenge.  Added “ly” to nested, nested, and nested arrays.

# What methods did you use to access and modify the array?

# I used a simple method to call it but I know there was a much easier way to do it.  I am just glad I was able to complete this challenge in the first place.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

# I didn’t use any new methods in this challenge but I did learn to use methods in a combo to cut my codes to less lines.  like I could use .flatten.length together as in a combo.


# How did you determine what should be an instance variable versus a local variable?

# I used a big combo of both in my codes.  I mainly use local variable when I don’t need to keep the values of that variable and I do copy and paste with them.  Instance variable are used when I need to pass information from method to method and have it return a ever changing value.

# For example if I’m keeping track of someones age, I would want to keep it as an instance variable where It needs to be change but also needs to be kept during the change.

# I would only use a local variable if I’m just passing information through a method.

# What do you feel is most improved in your refactored solution?

# It makes me go out and research more because thats the only way for me to find better ways to do certain things.



# ============================================================
# ============================================================
# =============       Bonus Challenge        =================
# ============================================================
# ============================================================
# Here I build my own legit 100% working Bingo game.
# This game is designed to match the real game.
# It also generate numbers corrently
# Check if there is a winner
# This week is the last week of Ruby.  I heart ruby so I expaned on the bingo game becaue I had some fre time.  Should spend it more on refactoring.  But I needed practice on syntax and logics.  So I made a seperate game.

class TrueBingoBoard


  def initialize
    @b = (01..15).to_a.shuffle.first(5)
    @i = (16..30).to_a.shuffle.first(5)
    @n = (31..45).to_a.shuffle.first(5)
    @g = (46..60).to_a.shuffle.first(5)
    @o = (61..75).to_a.shuffle.first(5)

    puts " _ __                                   "
    puts "( /  )o                  /     /     /  "
    puts " /--<,  _ _   _,  __    /     /     /   "
    puts "/___/(_/ / /_(_)_(_)   '     '     '    "
    puts "              /|      o     o     o     "
    puts "             (/                         "
    puts "The Aaron Edition : TradeMark pending."
    puts
    ask

  end

  def bingo_board
    puts "__________ .__                          "
    puts "\\______   \\|__|  ____    ____    ____  "
    puts " |    |  _/|  | /    \\  / ___\\  /  _ \\  "
    puts " |    |   \\|  ||   |  \\/ /_/  >(  <_> )     "
    puts " |______  /|__||___|  /\\___  /  \\____/    "
    puts "        \\/          \\//_____/              "
    puts
    puts "#{@b[0]} | #{@i[0]} | #{@g[0]} | #{@n[0]} | #{@o[0]}"
    puts "#{@b[1]} | #{@i[1]} | #{@g[1]} | #{@n[1]} | #{@o[1]}"
    puts "#{@b[2]} | #{@i[2]} | #{@g[2]} | #{@n[2]} | #{@o[2]}"
    puts "#{@b[3]} | #{@i[3]} | #{@g[3]} | #{@n[3]} | #{@o[3]}"
    puts "#{@b[4]} | #{@i[4]} | #{@g[4]} | #{@n[4]} | #{@o[4]}"
  end

  def draw
    print random_letter = ["B", "I", "N", "G", "O"].sample

    case random_letter
    when "B"
      puts random_number = (1..15).to_a.shuffle.first
      @b = @b.map do |num|
        num == random_number ? num = "XX" : num
      end
    when "I"
      puts random_number = (16..30).to_a.shuffle.first
      @i = @i.map do |num|
      num == random_number ? num = "XX" : num
      end
    when "N"
      puts random_number = (31..45).to_a.shuffle.first
      @n = @n.map do |num|
      num == random_number ? num = "XX" : num
      end
    when "G"
      puts random_number = (46..60).to_a.shuffle.first
      @g = @g.map do |num|
      num == random_number ? num = "XX" : num
      end
    when "O"
      puts random_number = (61..75).to_a.shuffle.first
      @o = @o.map do |num|
      num == random_number ? num = "XX" : num
      end
    end
    puts bingo_board
    win_yet
  end

  def ask
    puts "What would you like to do?"
    puts "Type \"check\" to check your board"
    puts "Type \"draw\" to see the next number"
    puts "Type \"ask\" to see if you have won"
    puts
    answer = gets.chomp

    case answer
      when "check"
        bingo_board
        ask
      when "draw"
        answer == "draw"
        draw
        ask
      when "ask"
        answer == "ask"
        win_yet
      else
        puts "I didn't understand that.  Let's try again"
        ask
    end
  end

  def win_yet
    if
      @b.include?("XX") && @i.include?("XX") && @n.include?("XX") && @g.include?("XX") && @o.include?("XX")
      won

    elsif
      @b == ["XX","XX","XX","XX","XX"] || @i == ["XX","XX","XX","XX","XX"] || @n == ["XX","XX","XX","XX","XX"] || @g == ["XX","XX","XX","XX","XX"] || @o == ["XX","XX","XX","XX","XX"]
      won
    elsif
      @b[0] == "XX" && @i[1] == "XX" && @n[2] == "XX" && @g[3] == "XX" && @o[4] == "XX" || @b[4] == "XX" && @i[3] == "XX" && @n[2] == "XX" && @g[1] == "XX" && @o[0] == "XX"

    else
      ask
      puts "In order to exit the game you need to get a win."
    end
  end

  def won
    puts "  ________                   __                     "
    puts " /  _____/ _______ _____   _/  |_   ______          "
    puts "/   \\  ___ \\_  __ \\\\__  \\  \\   __\\ /  ___/   "
    puts "\\    \\_\\  \\ |  | \\/ / __ \\_ |  |   \\___ \\   "
    puts " \\______  / |__|   (____  / |__|  \/____  >        "
    puts "        \\/              \\/             \\/        "
    puts "_____.___.                                          "
    puts "\\__  |   |  ____   __ __                           "
    puts " /   |   | /  _ \\ |  |  \\                         "
    puts " \\____   |(  <_> )|  |  /                          "
    puts " / ______| \\____/ |____/                           "
    puts " \\/                                                "
    puts "  ___ ___                                           "
    puts " /   |   \\ _____   ___  __  ____                   "
    puts "/    ~    \\\\__  \\  \\  \\/ /_/ __ \\             "
    puts "\\    Y    / / __ \\_ \\   / \\  ___/               "
    puts " \\___|_  / (____  /  \\_/   \\___  >               "
    puts "       \\/       \\/             \\/                "
    puts " __      __                                         "
    puts "/  \\    /  \\  ____    ____                        "
    puts "\\   \\/\\/   / /  _ \\  /    \\                    "
    puts " \\        / (  <_> )|   |  \\                      "
    puts "  \\__/\\  /   \\____/ |___|  /                     "
    puts "       \\/                \\/                       "
  end

end
# aaron = TrueBingoBoard.new


