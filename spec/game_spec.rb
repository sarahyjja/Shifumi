require 'stringio'
require 'setup'
require 'rules'
require 'computer'
require 'human'
require 'game'

RSpec.describe Game do

  xit 'integrate the the whole game' do

    set_up = SetUp.new
    game_mode_choice = "2"

    player1_name = "Bob"
    player2_name = "Computer"

    players = set_up.game_mode_choice(game_mode_choice, player1_name, player2_name)
    player1 = players[0]
    player2 = players[1]

    game = Rules.new(setup)
    player1.make_move
    player2.make_move

    expect(game.winning_move).to eq("Rock wins\n")

  end
end
