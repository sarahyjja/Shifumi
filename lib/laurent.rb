
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
      @output = "Paper wins\n"
    elsif moves.include?("scissors") && moves.include?("rock")
      @output = "Rock wins\n"
    elsif moves.include?("scissors") && moves.include?("paper")
      @output = "Scissors wins\n"
    elsif moves.include?("paper") && moves.include?("paper")
      return "draw"
    elsif moves.include?("rock") && moves.include?("rock")
      return "draw"
    elsif moves.include?("scissors") && moves.include?("scissors")
      return "draw"
    end
    return @output.to_s
  end
  def input
    @input.gets.chomp
  end
  # def display_winner(winning_move)
  #  if @input = ("rock" && "scissors")
  #   p @input
  #   return @output.puts "Rock wins\n"
  #   # @output.puts "Rock wins\n"
  # elsif @input = ("scissors" && "paper") || @input = ("paper" && "scissors")
  #    return @output.puts "Scissors wins\n"
  # # @output.puts "Scissors wins\n"
  #   end
  # end
end

class Player
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end
