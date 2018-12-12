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
  end
end

  # laurent sans changement _____________
  # def start
  #   player_1 = @setup.create_player_1
  #   player_2 = @setup.create_player_2
  #
  #   move_player_1 = player_1.make_move
  #   move_player_2 = player_2.make_move
  #
  #   winner = get_winner(move_player_1, move_player_2)
  #   puts winner
  # end


# le mien _____________
#   def play
#     players = @setup.ask_for_game_mode
#     player1 = players[0]
#     player2 = players[1]
#     @setup.display_player_name(player1.name, player2.name)
#     player1.ask_for_move(player1.name)
#     # make_move
#     convert_input_to_move(choice)
#     ask_for_move(player2)
#     make_move
#     convert_input_to_move(choice)
#     winning_move(@moves)
#   end
# end
