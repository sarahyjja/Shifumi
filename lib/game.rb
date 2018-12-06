
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
    @output.puts "SHIFUMI"
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
    choice = $stdin.gets.chomp
    case choice
    when "q", "p"
      @moves.push("paper")
    when "a", "l"
      @moves.push("rock")
    when "z", "m"
      @moves.push("scissors")
    else
      puts "Not valid"
      convert_input_to_move
    end
  end

  def get_a_random_move
    objects = ["rock", "paper", "scissors"]
    objects.sample
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

require 'player'
 class Computer < Player

 end
require 'player'
 class Human < Player

 end

 class SetUp
    def create_players(game_mode_choice, player1_name, player2_name)
      #players = [Human.new(player1_name || player2_name), Computer.new(player1_name || player2_name)]
      if [player1_name == Human && player2_name == Human]
        return players = game_mode_choice(1)
      elsif [player1_name == Human && player2_name == Computer]
        return game_mode_choice(2)
      elsif [player1_name == Computer && player2_name == Computer]
        return game_mode_choice(3)
      end
    end
    def game_mode_choice(players)
      1 == [Human.new(player1_name), Human.new(player2_name)]
      2 == [Human.new(player1_name), Computer.new(player2_name)]
      3 == [Computer.new(player1_name), Computer.new(player2_name)]
    end
  end
