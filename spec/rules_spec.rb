# This is my elements spec file.
# I will test here :
#     - the behaviour of the paper
#     - the behaviour of the rock
#     - the behaviour of the scissors

require 'rules'

RSpec.describe Rules do

  it 'ask if paper/rock/scissors are an object' do
    behaviour = Rules.new("paper", "rock", "scissors")

    expect(behaviour.is_a?Object).to eq(true)
  end

  it 'define what are the elements' do
    behaviour = Rules.new("paper", "rock", "scissors")

    expect(behaviour.paper).to eq("paper")
    expect(behaviour.rock).to eq("rock")
    expect(behaviour.scissors).to eq("scissors")
  end

  it 'explain the behaviour of the paper when its win' do
    behaviour = Rules.new("paper", "rock", "scissors")
    paper = "paper"
    behaviour.paper_winner("paper")

    expect(behaviour.paper_winner(paper)).to eq("you win")
  end

  # it 'explain the behaviour of the paper' do
  #   behaviour = Rules.new("rock")
  #
  #   expect(behaviour.paper).to eq("you loose")
  # end
end
