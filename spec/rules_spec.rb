require 'stringio'
require 'setup'
require 'rules'
require 'computer'
require 'human'
require 'game'

RSpec.describe Rules do

  it 'says paper win against rock' do
    input = StringIO.new
    output = StringIO.new
    setup = SetUp.new
    game = Rules.new(setup)

    moves = ["paper", "rock"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Paper wins\n")
  end

  it 'says rock win against scissors' do
    input = StringIO.new
    output = StringIO.new
    setup = SetUp.new
    game = Rules.new(setup)

    moves = ["scissors", "rock"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Rock wins\n")
  end

  it 'says scissors win against paper' do
    input = StringIO.new
    output = StringIO.new
    setup = SetUp.new
    game = Rules.new(setup)

    moves = ["scissors", "paper"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Scissors wins\n")
  end

  it 'says draw with paper and paper' do
    input = StringIO.new
    output = StringIO.new
    setup = SetUp.new
    game = Rules.new(setup)

    moves = ["paper", "paper"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Draw! No winner\n")
  end

  it 'says draw with rock and rock' do
    input = StringIO.new
    output = StringIO.new
    setup = SetUp.new
    game = Rules.new(setup)

    moves = ["rock", "rock"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Draw! No winner\n")
  end

  it 'says draw with scissors and scissors' do
    input = StringIO.new
    output = StringIO.new
    setup = SetUp.new
    game = Rules.new(setup)

    moves = ["scissors", "scissors"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Draw! No winner\n")
  end

  it 'print rock is the winner' do
    input = StringIO.new
    output = StringIO.new
    setup = SetUp.new
    game = Rules.new(setup)

    moves = ["rock", "scissors"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Rock wins\n")
  end

  it 'print scissors is the winner' do
    input = StringIO.new
    output = StringIO.new
    setup = SetUp.new
    game = Rules.new(setup)

    moves = ["scissors", "paper"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Scissors wins\n")
  end

  it 'print equality, no one is the winner' do
    input = StringIO.new
    output = StringIO.new
    setup = SetUp.new
    game = Rules.new(setup)

    moves = ["scissors", "scissors"]
    winning_move = game.winning_move(moves)

    expect(winning_move).to eq("Draw! No winner\n")
  end

  it 'converts q to paper' do
    input = StringIO.new
    output = StringIO.new
    setup = SetUp.new
    game = Rules.new(setup)

    paper = game.convert_input_to_move("q")

    expect(paper).to eq(["paper"])
  end

  it 'converts p to paper' do
    input = StringIO.new
    output = StringIO.new
    setup = SetUp.new
    game = Rules.new(setup)

    paper = game.convert_input_to_move("p")

    expect(paper).to eq(["paper"])
  end

  it 'converts a to rock' do
    input = StringIO.new
    output = StringIO.new
    setup = SetUp.new
    game = Rules.new(setup)

    rock = game.convert_input_to_move("a")

    expect(rock).to eq(["rock"])
  end

  it 'converts l to rock' do
    input = StringIO.new
    output = StringIO.new
    setup = SetUp.new
    game = Rules.new(setup)

    rock = game.convert_input_to_move("l")

    expect(rock).to eq(["rock"])
  end

  it 'converts z to scissors' do
    input = StringIO.new
    output = StringIO.new
    setup = SetUp.new
    game = Rules.new(setup)

    scissors = game.convert_input_to_move("z")

    expect(scissors).to eq(["scissors"])
  end

  it 'converts m to scissors' do
    input = StringIO.new
    output = StringIO.new
    setup = SetUp.new
    game = Rules.new(setup)

    scissors = game.convert_input_to_move("m")

    expect(scissors).to eq(["scissors"])
  end

  it 'return invalid message for invalid choice' do
    input = StringIO.new
    output = StringIO.new
    setup = SetUp.new
    game = Rules.new(setup)

    invalid_choice = game.convert_input_to_move("f")

    expect(invalid_choice).to eq("Not valid")
  end
end
