require 'stringio'
require 'setup'
require 'rules'
require 'player'
require 'computer'
require 'human'
require 'game'

RSpec.describe Player do

  it 'has two players with names' do

    player1 = Player.new("Bob")
    player2 = Player.new("Cindy")

    expect(player1.name).to eq("Bob")
    expect(player2.name).to eq("Cindy")
  end
end
