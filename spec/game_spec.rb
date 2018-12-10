require 'stringio'
require 'setup'
require 'rules'
require 'player'
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

    input = StringIO.new
    output = StringIO.new

    game = Rules.new(setup, input = $stdin, output = $stdout)

    expect(game.get_a_random_move).to eq("rock").or(eq("paper")).or(eq("scissors"))

  end
end
