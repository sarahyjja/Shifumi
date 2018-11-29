require 'laurent'

RSpec.describe Game do

  it 'has two players with names' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")
    game = Game.new(player1, player2)

    expect(game.player1.name).to eq("Bob")
    expect(game.player2.name).to eq("Cindy")
  end

  it 'says paper win against rock' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")
    game = Game.new(player1, player2)

    moves = ["paper", "rock"]

    expect(game.winning_move(moves)).to eq("paper")
  end

  it 'says rock win against scissors' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")
    game = Game.new(player1, player2)

    moves = ["scissors", "rock"]

    expect(game.winning_move(moves)).to eq("rock")
  end

  it 'says scissors win against paper' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")
    game = Game.new(player1, player2)

    moves = ["scissors", "paper"]

    expect(game.winning_move(moves)).to eq("scissors")
  end

  it 'says draw with paper and paper' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")
    game = Game.new(player1, player2)

    moves = ["paper", "paper"]

    expect(game.winning_move(moves)).to eq("draw")
  end

  it 'says draw with rock and rock' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")
    game = Game.new(player1, player2)

    moves = ["rock", "rock"]

    expect(game.winning_move(moves)).to eq("draw")
  end

  it 'says draw with rock and rock' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")
    game = Game.new(player1, player2)

    moves = ["scissors", "scissors"]

    expect(game.winning_move(moves)).to eq("draw")
  end
end
