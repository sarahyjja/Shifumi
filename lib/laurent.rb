
class Game
  def initialize(player1, player2, input = $stdin, output = $stdout)
    @player1 = player1
    @player2 = player2
    @input = input
    @output = output
  end
  def player1
    @player1
  end
  def player2
    @player2
  end
  def winning_move(moves)
    if moves.include?("paper") && moves.include?("rock")
      return "paper"
    elsif moves.include?("scissors") && moves.include?("rock")
      return "rock"
    elsif moves.include?("scissors") && moves.include?("paper")
      return "scissors"
    elsif moves.include?("paper") && moves.include?("paper")
      return "draw"
    elsif moves.include?("rock") && moves.include?("rock")
      return "draw"
    elsif moves.include?("scissors") && moves.include?("scissors")
      return "draw"
    end
  end
  def input
    @input.gets.chomp
  end
  def display_winner(winning_move)
   if @input = "rock" && "scissors"
     return @output.puts ("Rock wins\n")
   elsif @input = "paper" && "scissors"
     return @output.puts ("Scissors wins\n")
    end
  end
end

class Player
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end
