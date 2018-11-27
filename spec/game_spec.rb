require 'game'
# require 'player'

RSpec.describe Game do

  it 'says paper win against rock' do
    playerred = Player.new
    playerblue = Player.new
    players = [playerred, playerblue]

    game = Game.new(players)

    game.players[1].do_move("paper")
    game.players[0].do_move("rock")

    puts game.winner == players[1]
    expect(game.winner).to eq(players[1])
  end

  it 'says paper win against rock' do
    playerred = Player.new
    playerblue = Player.new
    players = [playerred, playerblue]

    game = Game.new(players)
    move = "paper", "rock", "scissors"

    game.players[0].do_move("paper")
    game.players[1].do_move("rock")

    puts game.winner == players[0]
    expect(game.winner).to eq(players[0])
  end
end
