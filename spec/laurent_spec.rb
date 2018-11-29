require 'laurent'
require 'stringio'

RSpec.describe Game do

  it 'has two players with names' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    input = StringIO.new
    output = StringIO.new

    game = Game.new(player1, player2, input, output)

    expect(game.player1.name).to eq("Bob")
    expect(game.player2.name).to eq("Cindy")
  end

  it 'says paper win against rock' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    input = StringIO.new
    output = StringIO.new

    game = Game.new(player1, player2, input, output)

    moves = ["paper", "rock"]

    expect(game.winning_move(moves)).to eq("paper")
  end

  it 'says rock win against scissors' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    input = StringIO.new
    output = StringIO.new

    game = Game.new(player1, player2, input, output)

    moves = ["scissors", "rock"]

    expect(game.winning_move(moves)).to eq("rock")
  end

  it 'says scissors win against paper' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    input = StringIO.new
    output = StringIO.new

    game = Game.new(player1, player2, input, output)

    moves = ["scissors", "paper"]

    expect(game.winning_move(moves)).to eq("scissors")
  end

  it 'says draw with paper and paper' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    input = StringIO.new
    output = StringIO.new

    game = Game.new(player1, player2, input, output)

    moves = ["paper", "paper"]

    expect(game.winning_move(moves)).to eq("draw")
  end

  it 'says draw with rock and rock' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    input = StringIO.new
    output = StringIO.new

    game = Game.new(player1, player2, input, output)

    moves = ["rock", "rock"]

    expect(game.winning_move(moves)).to eq("draw")
  end

  it 'says draw with rock and rock' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    input = StringIO.new
    output = StringIO.new

    game = Game.new(player1, player2, input, output)

    moves = ["scissors", "scissors"]

    expect(game.winning_move(moves)).to eq("draw")
  end

  it 'print the winner' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    input = StringIO.new
    output = StringIO.new

    game = Game.new(player1, player2, input, output)

    moves = ["rock", "scissors"]
    winning_move = game.winning_move(moves)
    game.display_winner(winning_move)

    expect(output.string).to eq("Rock wins\n")
  end

  it 'print the winner' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    input = StringIO.new
    output = StringIO.new

    game = Game.new(player1, player2, input, output)

    moves = ["paper", "scissors"]
    winning_move = game.winning_move(moves)
    game.display_winner(winning_move)

    expect(output.string).to eq("Scissors wins\n")
  end
end
