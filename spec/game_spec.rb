require 'rules'
require 'player'
require 'stringio'
require 'setup'
require 'computer'
require 'human'

RSpec.describe Rules do

  # it 'has two players with names' do
  #   player1 = Player.new("Bob")
  #   player2 = Player.new("Cindy")
  #
  #   input = StringIO.new
  #   output = StringIO.new
  #
  #   game = Rules.new(player1, player2, input, output)
  #
  #   expect(game.player1.name).to eq("Bob")
  #   expect(game.player2.name).to eq("Cindy")
  # end

  it 'says paper win against rock' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    # input = StringIO.new
    # output = StringIO.new

    game = Rules.new(player1, player2)

    moves = ["paper", "rock"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Paper wins\n")
  end

  it 'says rock win against scissors' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    # input = StringIO.new
    # output = StringIO.new

    game = Rules.new(player1, player2)

    moves = ["scissors", "rock"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Rock wins\n")
  end

  it 'says scissors win against paper' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    game = Rules.new(player1, player2)

    moves = ["scissors", "paper"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Scissors wins\n")
  end

  it 'says draw with paper and paper' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    game = Rules.new(player1, player2)

    moves = ["paper", "paper"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Draw! No winner\n")
  end

  it 'says draw with rock and rock' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    game = Rules.new(player1, player2)

    moves = ["rock", "rock"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Draw! No winner\n")
  end

  it 'says draw with scissors and scissors' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    game = Rules.new(player1, player2)

    moves = ["scissors", "scissors"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Draw! No winner\n")
  end

  it 'print rock is the winner' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    game = Rules.new(player1, player2)

    moves = ["rock", "scissors"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Rock wins\n")
  end

  it 'print scissors is the winner' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    game = Rules.new(player1, player2)

    moves = ["scissors", "paper"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Scissors wins\n")
  end

  it 'print equality, no one is the winner' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    game = Rules.new(player1, player2)

    moves = ["scissors", "scissors"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Draw! No winner\n")
  end

  it 'converts q to paper' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    game = Rules.new(player1, player2)

    paper = game.convert_input_to_move("q")

    expect(paper).to eq(["paper"])
  end

  it 'converts p to paper' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    game = Rules.new(player1, player2)

    paper = game.convert_input_to_move("p")

    expect(paper).to eq(["paper"])
  end

  it 'converts a to rock' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    game = Rules.new(player1, player2)

    rock = game.convert_input_to_move("a")

    expect(rock).to eq(["rock"])
  end

  it 'converts l to rock' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    game = Rules.new(player1, player2)

    rock = game.convert_input_to_move("l")

    expect(rock).to eq(["rock"])
  end

  it 'converts z to scissors' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    game = Rules.new(player1, player2)

    scissors = game.convert_input_to_move("z")

    expect(scissors).to eq(["scissors"])
  end

  it 'converts m to scissors' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    game = Rules.new(player1, player2)

    scissors = game.convert_input_to_move("m")

    expect(scissors).to eq(["scissors"])
  end

  xit 'return invalid message for invalid choice' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    game = Rules.new(player1, player2)

    invalid_choice = game.convert_input_to_move("7")

    expect(invalid_choice).to eq("Not valid")
  end

  it 'add a computer player' do
    player1 = Player.new("Bob")
    player2 = Computer.new("Jean")

    # input = StringIO.new
    # output = StringIO.new

    game = Rules.new(player1, player2)

    expect(game.player1.name).to eq("Bob")
    expect(game.player2.name).to eq("Jean")
  end

  it 'do computer play random choice' do
    player2 = Computer.new("Jean")

    input = StringIO.new
    output = StringIO.new

    expect(player2.make_move).to eq("rock").or(eq("paper")).or(eq("scissors"))
  end

  it 'creates 2 human players' do

    set_up = SetUp.new
    game_mode_choice = "1"

    player1_name = "Bob"
    player2_name = "Dylan"

    players = set_up.game_mode_choice(game_mode_choice, player1_name, player2_name)
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

    game = Rules.new(player1, player2, input = $stdin, output = $stdout)

    expect(game.get_a_random_move).to eq("rock").or(eq("paper")).or(eq("scissors"))

  end
end
