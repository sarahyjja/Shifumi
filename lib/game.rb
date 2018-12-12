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

    player_1.create_player_name
    player_2.create_player_name

    rules.ask_for_move(player_1)
    player_1.make_move

    rules.ask_for_move(player_2)
    player_2.make_move

    results = rules.results(player_1, player_2)
    winner = results[:winner]
    loser = results[:loser]

    if winner
      puts "#{winner.name} you win with #{winner.move}!"
      puts "#{loser.name} you lose with #{loser.move}"
    else
      puts "Tie!"
    end
    play
  end

end
