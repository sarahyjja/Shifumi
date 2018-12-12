require 'setup'
require 'rules'
require 'computer'
require 'human'
require 'game'

class Game
  def initialize(setup)
    @setup = setup
  end

  def play
    rules = Rules.new
    @setup.welcome_message
    mode_choice = @setup.get_mode_choice
    player_1, player_2 = @setup.create_players(mode_choice)

    rules.ask_for_move(player_1)
    move_player_1 = rules.make_move(player_1)
    rules.ask_for_move(player_2)
    move_player_2 = rules.make_move(player_2)

    winner = rules.winning_move(move_player_1, move_player_2)

    if winner
      puts "#{winner} you win!"
    else
      puts "Tie!"
    end
    play
  end

end
