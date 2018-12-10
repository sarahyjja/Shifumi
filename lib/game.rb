require 'setup'
require 'player'
require 'rules'

class Game
  def initialize(setup)
    @setup = setup
  end


  def play
    players = @setup.ask_for_game_mode
    player1 = players[0]
    player2 = players[1]
    @setup.display_player_name(player1.name, player2.name)
    ask_for_move(player1)
    make_move
    convert_input_to_move
    ask_for_move(player2)
    make_move
    convert_input_to_move
    winning_move(@moves)

  end
end
