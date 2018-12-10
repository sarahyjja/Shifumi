require 'rules'
require 'player'
require 'stringio'
require 'setup'
require 'computer'
require 'human'

RSpec.describe Player do

  it 'has two players with names' do
    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    input = StringIO.new
    output = StringIO.new

    game = Rules.new(player1, player2, input, output)

    expect(game.player1.name).to eq("Bob")
    expect(game.player2.name).to eq("Cindy")
  end
end
