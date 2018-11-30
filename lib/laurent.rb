
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

  def input
    @input.gets.chomp
  end

  def winning_move(moves)
    if moves.include?("paper") && moves.include?("rock")
      return "Paper wins\n"
    elsif moves.include?("scissors") && moves.include?("rock")
      return "Rock wins\n"
    elsif moves.include?("scissors") && moves.include?("paper")
      return "Scissors wins\n"
    elsif moves.include?("paper") && moves.include?("paper")
      return "Draw! No winner\n"
    elsif moves.include?("rock") && moves.include?("rock")
      return "Draw! No winner\n"
    elsif moves.include?("scissors") && moves.include?("scissors")
      return "Draw! No winner\n"
    end
    return @output.to_s
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
