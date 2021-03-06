require 'stringio'
require 'setup'
require 'rules'
require 'computer'
require 'human'
require 'game'

RSpec.describe Human do

  it 'has two players with names' do

    player1 = Human.new
    player2 = Human.new

    player1 = "Bob"
    player2 = "Cindy"
    
    expect(player1.name).to eq("Bob")
    expect(player2.name).to eq("Cindy")
  end
end
