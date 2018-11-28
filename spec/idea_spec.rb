require 'idea'

RSpec.describe Shifumi do

  it 'says player 1 win with paper against rock' do
    # player1 = Player.new
    # player2 = Player.new

    game = Shifumi.new

    game.player1.form(["rock", "paper", "scissors"])
    game.player2.form(["rock", "paper", "scissors"])

    player1.winner_move("paper")

    expect(game.winner_move.display_result).to eq(player1)
  end
end
