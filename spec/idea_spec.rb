require 'idea'

RSpec.describe Shifumi do

  it 'says player 1 win with paper against rock' do
    player1 = Player.new
    player2 = Player.new
    players = [player1, player2]
    game = Game.new

    game.players1[0].form.winner_move("paper")
    game.players2[1].form("rock")

    expect(game.display_result).to eq(player1)
  end
end
