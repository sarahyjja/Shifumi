require 'stringio'
require 'setup'
require 'rules'
require 'player'
require 'computer'
require 'human'
require 'game'

RSpec.describe SetUp do

  it 'creates 2 human players' do

    setup = SetUp.new
    game_mode_choice = "1"

    player1 = Player.new("Bob")
    player2 = Player.new("Dylan")

    players = setup.game_mode_choice(game_mode_choice, player1, player2)
    player1 = players[0]
    player2 = players[1]

    expect(player1).to be_a(Human)
    expect(player2).to be_a(Human)
  end

  it 'creates human player and computer player' do

    set_up = SetUp.new
    game_mode_choice = "2"

    player1_name = "Bob"
    player2_name = "Comput"

    players = set_up.game_mode_choice(game_mode_choice, player1_name, player2_name)
    player1 = players[0]
    player2 = players[1]

    expect(player1).to be_a(Human)
    expect(player2).to be_a(Computer)
  end

  it 'creates 2 computer players' do

    set_up = SetUp.new
    game_mode_choice = "3"

    player1_name = "Bob"
    player2_name = "Dylan"

    players = set_up.game_mode_choice(game_mode_choice, player1_name, player2_name)
    player1 = players[0]
    player2 = players[1]

    expect(player1).to be_a(Computer)
    expect(player2).to be_a(Computer)
  end

  it 'do computer play random choice' do
    player2 = Computer.new("Jean")

    input = StringIO.new
    output = StringIO.new

    expect(player2.make_move).to eq("rock").or(eq("paper")).or(eq("scissors"))
  end
end
