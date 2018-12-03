
class Game
  def initialize(player1, player2, input = $stdin, output = $stdout)
    @player1 = player1
    @player2 = player2
    @input = input
    @output = output
    @moves = []
  end

  def player1
    @player1
  end

  def player2
    @player2
  end

  def start_new_game
    start
    ask_for_move(@player1)
    convert_input_to_move
    ask_for_move(@player2)
    convert_input_to_move
    winning_move(@moves)
  end

  def start
    puts "SHIFUMI"
    puts "Set up 2 players."
    name = @input.gets.chomp
    puts "#{name} is player 1"
    @player1 = name
    name = @input.gets.chomp
    @player2 = name
    puts "#{name} is player 2"
    puts "Lets start the game!"
  end

  def input
    @input.gets.chomp
  end

  def ask_for_move(player)
    puts "#{player}"
    puts "Choose in between :"
    puts "Q or P for paper"
    puts "A or L for rock"
    puts "Z or M for scissors"
  end

  def convert_input_to_move
    choice = gets.chomp
    case choice
    when "q", "p"
      @moves.push("paper")
    when "a", "l"
      @moves.push("rock")
    when "z", "m"
      @moves.push("scissors")
      #return "scissors"
    else
      puts "Not valid"
      convert_input_to_move
    end
  end

  def winning_move(moves)
    if moves.include?("paper") && moves.include?("rock")
      puts "Paper wins\n"
      return "Paper wins\n"
    elsif moves.include?("scissors") && moves.include?("rock")
       puts "Rock wins\n"
      return "Rock wins\n"
    elsif moves.include?("scissors") && moves.include?("paper")
      puts "Scissors wins\n"
      return "Scissors wins\n"
    elsif moves.include?("paper") && moves.include?("paper")
      puts "Draw! No winner\n"
      return "Draw! No winner\n"
    elsif moves.include?("rock") && moves.include?("rock")
      puts "Draw! No winner\n"
      return "Draw! No winner\n"
    elsif moves.include?("scissors") && moves.include?("scissors")
      puts "Draw! No winner\n"
      return "Draw! No winner\n"
    end
  end

end
