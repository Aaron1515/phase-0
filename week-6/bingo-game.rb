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
    bingo_board
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
    if #roll win
  @b[0] == "XX" && @i[0] == "XX" && @n[0] == "XX" && @g[0] == "XX" && @o[0] == "XX" || @b[1] == "XX" && @i[1] == "XX" && @n[1] == "XX" && @g[1] == "XX" && @o[1] == "XX" || @b[2] == "XX" && @i[2] == "XX" && @n[2] == "XX" && @g[2] == "XX" && @o[2] == "XX" || @b[3] == "XX" && @i[3] == "XX" && @n[3] == "XX" && @g[3] == "XX" && @o[3] == "XX" || @b[4] == "XX" && @i[4] == "XX" && @n[4] == "XX" && @g[4] == "XX" && @o[4] == "XX"
      won
    elsif #column win
      @b == ["XX","XX","XX","XX","XX"] || @i == ["XX","XX","XX","XX","XX"] || @n == ["XX","XX","XX","XX","XX"] || @g == ["XX","XX","XX","XX","XX"] || @o == ["XX","XX","XX","XX","XX"]
      won
    elsif #X win
      @b[0] == "XX" && @i[1] == "XX" && @n[2] == "XX" && @g[3] == "XX" && @o[4] == "XX" || @b[4] == "XX" && @i[3] == "XX" && @n[2] == "XX" && @g[1] == "XX" && @o[0] == "XX"
      won
    else
      puts "In order to exit the game you need to get a win."
      ask
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



aaron = TrueBingoBoard.new


